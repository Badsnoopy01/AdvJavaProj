package org.introsoftengi.finalproject.ejb;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.introsoftengi.finalproject.entity.User;

public class UsersFacade extends AbstractFacade<User> {
    @PersistenceContext(unitName = "UserPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(User.class);
    }
}
