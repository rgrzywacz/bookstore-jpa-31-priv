package dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

import config.DatabaseFactoryManager;
import entity.Category;

public class CategoryDAO {
    public List<Category> find() {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query query = entityManager.createQuery("select c from Category c");
        List<Category> result = query.getResultList();
        entityManager.close();
        return result;
    }

    public List<Category> findCategoryCodeWithName() {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();

        List<Object[]> resultList = entityManager.createQuery(
                "select c.code, c.name from Category c", Object[].class).getResultList();

        List<Category> categories = new ArrayList<>();
        for (Object[] row : resultList) {
            Category category = new Category();
            category.setCode((String) row[0]);
            category.setName((String) row[1]);
            categories.add(category);
        }
        return categories;
    }
    @SuppressWarnings("all")
    public Category insert(Category newCategory) {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        entityManager.getTransaction().begin();
        Category category = entityManager.merge(newCategory);
        entityManager.getTransaction().commit();
        return category;
    }

    @SuppressWarnings("all")
    public Category update(Category category) {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        entityManager.getTransaction().begin();
        Category updatedCategory = entityManager.merge(category);
        entityManager.getTransaction().commit();
        return updatedCategory;
    }

    public void deleteByCode(String code) {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        entityManager.getTransaction().begin();
        Query query = entityManager.createQuery("delete from Category c where c.code=:code");
        query.setParameter("code",code);
        int i = query.executeUpdate();
        entityManager.getTransaction().commit();
        System.out.println("result: "+i);
    }

    public Category findByCode(String categoryCode) {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query query = entityManager.createQuery("select c from Category c where c.code=:code");
        query.setParameter("code", categoryCode);
        return (Category)query.getSingleResult();
    }
}
