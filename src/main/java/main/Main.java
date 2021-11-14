package main;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaBuilder.In;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.net.Proxy.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Stream;

import config.DatabaseFactoryManager;
import dto.BookDto;
import entity.Author;
import entity.Book;
import entity.Category;
import service.AuthorService;
import service.BookService;
import service.CategoryService;


public class Main {
    public static void main(String[] args) {
        EntityManager em = DatabaseFactoryManager.getInstance().getEntityManager();
        /* Metody Entity Managera Start */
        Category category = Category.builder().code("KITCHEN").name("Ksiażka kuchenna").build();
        category = em.merge(category);
        System.out.println(category);

        category.setName("Ksiażka kucharska");
        category = em.merge(category);
        System.out.println(category);

        em.remove(category);
        /* Metody Entity Managera Stop */
        /* JPQL Start*/
        /* JPQL 1 */
        Query query = em.createQuery("select b from Book b left join fetch b.category");
        List<Book> books = (List<Book>) query.getResultList();

        books.forEach(book -> {
            System.out.println("Title: "+ book.getTitle()+", category name: "+book.getCategory().getName());
        });
        System.out.println(books);
        /* JPQL 3 - Typed Query*/
        TypedQuery<Book> bookTypedQuery =  em.createQuery("select b from Book b left join fetch b.category", Book.class);
        books = bookTypedQuery.getResultList();
        books.forEach(book -> {
            System.out.println("Title: "+ book.getTitle()+", category name: "+book.getCategory().getName());
        });
        /* JPQL 3 */
        query = em.createQuery("select b.title, b.category.code, b.publisher.name from Book b");
        List<Object[]> resultList = (List<Object[]>) query.getResultList();
        List<BookDto> bookDtos = new ArrayList<>();
        resultList.forEach(objects -> {
            String title = (String) objects[0];
            String categoryCode = (String) objects[1];
            String publisherName = (String) objects[2];
            BookDto bookDto = BookDto.builder().categoryCode(categoryCode)
                    .title(title).publisherName(publisherName).build();
            bookDtos.add(bookDto);
        });
        System.out.println(bookDtos);

        /* JPQL 4 Named Query */
        System.out.println("JPQL 4 Named Query");
        TypedQuery<Book> booksTypedQuery = em.createNamedQuery("Book_findBooks", Book.class);
        booksTypedQuery.setParameter("minVal",(short)100);
        booksTypedQuery.setParameter("maxVal",(short)300);
        books = booksTypedQuery.getResultList();
        books.forEach(book -> System.out.println("Book title: " + book.getTitle() + ", pages number: " + book.getPagesNumber()));
        /* JPQL 5 Named Query */
        System.out.println("JPQL 5 Named Query");
        Query query1 = em.createNamedQuery("Book_updateBookPagesNumber");
        query1.setParameter("newValuePagesNumber",(short)180);
        query1.setParameter("bookTitle","Kaznodzieja");
        em.getTransaction().begin();
        int result = query1.executeUpdate();
        em.getTransaction().commit();
        System.out.println("Update result: "+result);
        /* JPQL 6 Named Query */
        booksTypedQuery = em.createNamedQuery("Book_findBookByTitle", Book.class);
        booksTypedQuery.setParameter("title", "Kaznodzieja");
        Book singleResult = booksTypedQuery.getSingleResult();
        System.out.println("Book title: "+singleResult.getTitle() +", book pages number: "+singleResult.getPagesNumber());

        /* JPQL 7 Native Query */
        bookDtos.clear();
        Query nativeQuery = em.createNativeQuery("select id, title, pages_number from books");
        List<Object[]> resultList1 = nativeQuery.getResultList();
        resultList1.forEach(objects -> {
            int id  = (Integer) objects[0];
            String title = (String) objects[1];
            Short pagesNumber = (Short) objects[2];

            BookDto bookDto = BookDto.builder().title(title).id(id).pagesNumber(pagesNumber).build();
            bookDtos.add(bookDto);
        });
        System.out.println(bookDtos);
        /* Criteria */
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Book> query2 = cb.createQuery(Book.class);
        Root<Book> c = query2.from(Book.class);



        em.close();




      /*  TypedQuery<Category> typesTypedQuery1 = em.createQuery("select c from Category c",
                                                                      Category.class);
        List<Category> resultList = typesTypedQuery1.getResultList();
        System.out.println(resultList);

        TypedQuery<Category> typesTypedQuery2 = em.createQuery("select c from Category c left join c.books", Category.class);
        List<Category> resultList1 = typesTypedQuery2.getResultList();
        System.out.println(resultList1);*/


     /*   AuthorService authorService = new AuthorService();
        authorService.findAuthorByFirstNameAndLastName("Stephen","King");
        //EntityManager Methods



        TypedQuery<Author> authors = entityManager.createQuery(
                "select a from Author a", Author.class);
        List<Author> resultList = authors.getResultList();
        System.out.println(resultList);

        TypedQuery<Object[]> query = entityManager.createQuery(
                "select a.firstName, a.lastName from Author a", Object[].class);
        List<Object[]> resultList1 = query.getResultList();
        List<Author> authorsList = new ArrayList<>();
        resultList1.forEach(objects -> {
            String firstName = (String) objects[0];
            String lastName = (String) objects[1];
            Author author = new Author();
            author.setFirstName(firstName);
            author.setLastName(lastName);
            authorsList.add(author);
        });
        System.out.println(authorsList);
        // **********************************************************
        // Uniknięcie lazy initialization

        TypedQuery<Author> q = entityManager.createQuery("SELECT a FROM Author a LEFT JOIN  a.authorBook ab LEFT JOIN  ab.book", Author.class);
        entityManager.getTransaction().begin();
        List<Author> resultList2 = q.getResultList();

        entityManager.getTransaction().commit();
        entityManager.close();*/





        /*AuthorService authorService = new AuthorService();
        BookService bookService = new BookService();
        CategoryService categoryService = new CategoryService();
        Scanner in = new Scanner(System.in);

        String operation = null;
        Category category;
        while(true) {
            System.out.println("Wybierz operacje");
            System.out.println("1 - Wyświetl informacje o książkach");
            System.out.println("2 - Wyświetl wszystkie tytuły książek");
            System.out.println("3 - Wyświetl informacje o książce na podstawie jej tytułu");
            System.out.println("4 - Wyświetl wszystkie kategorie");
            System.out.println("5 - Pobierz kategorię na podstawie jej kodu");
            System.out.println("6 - Dodaj nową kategorię");
            System.out.println("7 - Zaaktualizuj kategorię");
            System.out.println("8 - Usuń kategorię");
            System.out.println("9 - Zakończ aplikacje");
            operation = in.nextLine();
            switch (operation){
                case "1":
                    bookService.printBooks();
                    break;
                case "2":
                    bookService.printBookTitles();
                    break;
                case "3":
                    System.out.println("Podaj tytuł książki");
                    String bookTitle = in.nextLine();
                    bookService.printBookInformationByTitle(bookTitle);
                    break;
                case "4":
                    categoryService.printCategories();
                    break;
                case "5":
                    System.out.println("Podaj kod kateorii");
                    String categoryCode = in.nextLine();
                    category = categoryService.getCategoryByCode(categoryCode);
                    System.out.println(category);
                    break;
                case "6":
                    System.out.println("Podaj kod kateorii");
                    categoryCode = in.nextLine();
                    System.out.println("Podaj nazwę kateorii");
                    String categoryName = in.nextLine();
                    category = categoryService.addCategory(categoryName, categoryCode);
                    System.out.println(category);
                    break;
                case "7":
                    System.out.println("Podaj kod kateorii");
                    categoryCode = in.nextLine();
                    category = categoryService.getCategoryByCode(categoryCode);
                    System.out.println("Podaj nową nazwę kategorii");
                    categoryName = in.nextLine();
                    category.setName(categoryName);
                    category = categoryService.updateCategory(category);
                    System.out.println(category);
                    break;
                case "8":
                    System.out.println("Podaj kod kateorii do usunięcia");
                    categoryCode = in.nextLine();
                    categoryService.deleteCategory(categoryCode);
                    break;
                case "9":
                    System.out.println("Zakończenie działania aplikacji");
                    System.exit(0);
                default:
                    break;
            }
        }*/
    }
}
