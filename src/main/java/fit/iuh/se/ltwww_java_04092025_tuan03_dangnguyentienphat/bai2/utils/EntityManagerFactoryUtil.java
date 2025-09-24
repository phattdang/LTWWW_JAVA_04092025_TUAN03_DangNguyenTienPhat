package fit.iuh.se.ltwww_java_04092025_tuan03_dangnguyentienphat.bai2.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class EntityManagerFactoryUtil {
    private static final EntityManagerFactory entityManageFactory;

    static {
        try {
            entityManageFactory = Persistence.createEntityManagerFactory("user-management");
        } catch (Throwable ex) {
            System.err.println("Initial EntityManagerFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static EntityManager getEntityManager() {
        return entityManageFactory.createEntityManager();
    }

    public static void close() {
        if (entityManageFactory.isOpen()) {
            entityManageFactory.close();
        }
    }
}
