package service;

import java.util.List;
import java.util.stream.Collectors;

import dao.BookDAO;
import dto.BookDto;
import entity.Book;

public class BookService {
    private BookDAO bookDAO = new BookDAO();
    public List<BookDto> findBooks() {
        return null;
    }


    public void printBooks(){
        List<Book> books = bookDAO.find();
        books.forEach(a -> System.out.println(a.toString()));
    }

    public void printBookInformationByTitle(String title){
        Book book = bookDAO.findByTitle(title);
        System.out.println(book);
    }


    public void printBookTitles() {
        List<String> titles = bookDAO.findTitles();
        String collect = titles.stream().collect(Collectors.joining(", "));
        System.out.println(collect);
    }
}
