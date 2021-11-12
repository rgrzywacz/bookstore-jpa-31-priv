package dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

import config.DatabaseFactoryManager;
import entity.Book;

public class BookDAO {
    public List<Book> find(){
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query query = entityManager.createQuery("select b from Book b");
        List<Book> authors = query.getResultList();
        return authors;
    }

    public Book findByTitle(String title){
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query query = entityManager.createQuery("select b from Book b where b.title=:title");
        query.setParameter("title", title);
        Book singleResult = (Book) query.getSingleResult();
        return singleResult;
    }

    public List<String> findTitles() {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query query = entityManager.createQuery("select b.title from Book b");
        List<String> resultList = (List<String>) query.getResultList();
        return resultList;
    }

}
