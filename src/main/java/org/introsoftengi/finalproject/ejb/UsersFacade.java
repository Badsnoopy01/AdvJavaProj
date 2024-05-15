package org.introsoftengi.finalproject.ejb;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.introsoftengi.finalproject.entity.User;

import java.util.List;

@Stateless
public class UsersFacade extends AbstractFacade<User> {
    @PersistenceContext(unitName="userPu")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(User.class);
    }

    public List<User> findByUserNameAndPassword(String username, String password) {
        List results = em.createQuery("SELECT u FROM User u WHERE u.username = :username AND u.password = :password")
                .setParameter("username", username).setParameter("password", password).getResultList();
        return results;
    }
}
