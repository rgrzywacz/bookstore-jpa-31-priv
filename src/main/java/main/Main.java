package main;

import java.util.Scanner;

import entity.Category;
import service.AuthorService;
import service.BookService;
import service.CategoryService;


public class Main {
    public static void main(String[] args) {
        AuthorService authorService = new AuthorService();
        authorService.findAuthorByFirstNameAndLastName("Stephen","King");
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
