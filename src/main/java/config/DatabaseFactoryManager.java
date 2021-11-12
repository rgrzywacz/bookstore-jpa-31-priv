package config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DatabaseFactoryManager {

    private static DatabaseFactoryManager instance;
    private static EntityManagerFactory entityManagerFactory;

    private DatabaseFactoryManager() {

    }

    public static DatabaseFactoryManager getInstance() {
        if (instance == null) {
            instance = new DatabaseFactoryManager();
            entityManagerFactory = Persistence.createEntityManagerFactory("bookstoreSDA");
        }
        return instance;
    }

    private EntityManagerFactory getEntityManagerFactory() {
        return entityManagerFactory;
    }

    public EntityManager getEntityManager() {
        return this.getEntityManagerFactory().createEntityManager();
    }
}
