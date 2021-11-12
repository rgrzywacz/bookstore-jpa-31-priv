package service;

import java.util.List;

import dao.AuthorDAO;
import entity.Author;

public class AuthorService {
    private AuthorDAO authorDAO = new AuthorDAO();
    public void printAuthors(){
        List<Author> authors = authorDAO.find();
        authors.forEach(a -> System.out.println(a.toString()));
    }

    public Author findAuthorByFirstNameAndLastName(String firstName, String lastName){
        if (firstName != null && lastName != null) {
            return authorDAO.findAuthorByFirstNameAndLastName(firstName, lastName);
        }
        return null;
    }
}
