package org.introsoftengi.finalproject.web;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.ResourceBundle;

import jakarta.ejb.EJB;
import jakarta.ejb.Stateless;
import jakarta.enterprise.context.SessionScoped;
import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import jakarta.faces.convert.FacesConverter;
import jakarta.faces.model.DataModel;
import jakarta.faces.model.SelectItem;
import jakarta.inject.Named;
import lombok.Getter;
import org.introsoftengi.finalproject.ejb.UsersFacade;
import org.introsoftengi.finalproject.entity.User;
import org.introsoftengi.finalproject.web.util.Util;

@Named
@SessionScoped
public class UsersController implements Serializable {
    private static final long serialVersionUID = 1L;
    private User current;
    @Getter
    private DataModel items = null;
    @EJB
    private UsersFacade ejbFacade;
    private int selectedItemIndex;

    public UsersController() {
    }

    public User getSelected() {
        if (current == null) {
            current = new User();
            selectedItemIndex = -1;
        }
        return current;
    }

    private UsersFacade getFacade() {
        return ejbFacade;
    }

    public String prepareList() {
        recreateModel();
        return "List";
    }

    public String prepareView() {
        current = (User)getItems().getRowData();
        return "View";
    }

    public String prepareCreate() {
        current = new User();
        selectedItemIndex = -1;
        return "Create";
    }

    public String create() {
        try {
//            current.setUserName(username);
//            current.setPassword(password);
            ejbFacade.create(current);
//            Util.addSuccessMessage(ResourceBundle.getBundle("/Bundle").getString("UserCreated"));
            return prepareCreate();
        } catch (Exception e) {
//            Util.addErrorMessage(e, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String prepareEdit() {
        current = (User)getItems().getRowData();
        return "Edit";
    }

    public String update() {
        try {
            getFacade().edit(current);
            Util.addSuccessMessage(ResourceBundle.getBundle("/Bundle").getString("UserUpdated"));
            return "View";
        } catch (Exception e) {
            Util.addErrorMessage(e, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String destroy() {
        current = (User)getItems().getRowData();
        performDestroy();
        recreateModel();
        return "List";
    }

    public String destroyAndView() {
        performDestroy();
        recreateModel();
        updateCurrentItem();
        if (selectedItemIndex >= 0) {
            return "View";
        } else {
            // all items were removed - go back to list
            recreateModel();
            return "List";
        }
    }

    private void performDestroy() {
        try {
            getFacade().remove(current);
            Util.addSuccessMessage(ResourceBundle.getBundle("/Bundle").getString("UserDeleted"));
        } catch (Exception e) {
            Util.addErrorMessage(e, ResourceBundle.getBundle("/Bundle").getString("PersistenceErrorOccured"));
        }
    }

    private void updateCurrentItem() {
        int count = getFacade().count();
        if (selectedItemIndex >= count) {
            // selected index cannot be bigger than number of items:
            selectedItemIndex = count-1;
        }
        if (selectedItemIndex >= 0) {
            current = getFacade().findRange(new int[]{selectedItemIndex, selectedItemIndex+1}).get(0);
        }
    }

    private void recreateModel() {
        items = null;
    }

    public String next() {
        recreateModel();
        return "List";
    }

    public String previous() {
        recreateModel();
        return "List";
    }

    public boolean login(String username, String password) {
        List users = getFacade().findByUserNameAndPassword(username, password);
        if (users.size() > 0 && users.get(0) instanceof User && Objects.nonNull(users.get(0))) {
            return true;
        } else {
            return false;
        }
    }

    public SelectItem[] getItemsAvailableSelectMany() {
        return Util.getSelectItems(ejbFacade.findAll(), false);
    }

    public SelectItem[] getItemsAvailableSelectOne() {
        return Util.getSelectItems(ejbFacade.findAll(), true);
    }

    @FacesConverter(forClass=User.class)
    public static class UsersControllerConverter implements Converter<User> {

        @Override
        public User getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            UsersController controller = (UsersController)facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "UsersController");
            return controller.ejbFacade.find(getKey(value));
        }

        java.lang.Long getKey(String value) {
            java.lang.Long key;
            key = Long.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Long value) {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, User object) {
            if (object == null) {
                return null;
            }
            if (object instanceof User) {
                User o = (User) object;
                return getStringKey(Long.valueOf(o.getId()));
            } else {
                throw new IllegalArgumentException("object " +
                        object +
                        " is of type " +
                        object.getClass().getName() +
                        "; expected type: " +
                        UsersController.class.getName());
            }
        }

    }

}
