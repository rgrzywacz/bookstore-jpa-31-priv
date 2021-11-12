package dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

import config.DatabaseFactoryManager;
import entity.Author;

public class AuthorDAO {
    public List<Author> find(){
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query query = entityManager.createQuery("select a from Author a");
        List<Author> authors = query.getResultList();
        return authors;
    }

    public Author findAuthorByFirstNameAndLastName(String firstName, String lastName) {
        EntityManager entityManager = DatabaseFactoryManager.getInstance().getEntityManager();
        Query q = entityManager.createNativeQuery("select first_name, last_name from authors where " +
                                        "first_name=? and last_name=?");
        q.setParameter(1, firstName);
        q.setParameter(2, lastName);

        Object[] singleResult  = (Object[])q.getSingleResult();
        Author author = new Author();
        author.setFirstName((String)singleResult[0]);
        author.setLastName((String)singleResult[1]);
        return author;
    }
}
