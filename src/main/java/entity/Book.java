package entity;

import javax.persistence.*;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "books")
@SuppressWarnings("all")
/*@org.hibernate.annotations.NamedQuery(name = "DeptEmployee_findByEmployeeNumber",
                                      query = "from DeptEmployee where employeeNumber = :employeeNo")*/
@NamedQueries({
    @NamedQuery(name = "Book_findBooks",query = "select b from Book b where b.pagesNumber>=:minVal and b.pagesNumber<=:maxVal"),
    @NamedQuery(name = "Book_updateBookPagesNumber", query = "update Book b set b.pagesNumber=:newValuePagesNumber where b.title=:bookTitle"),
    @NamedQuery(name= "Book_findBookByTitle", query = "select b from Book b where b.title=:title")
})
public class Book extends BasicEntity {

    @Column
    private String title;

    @Column(name = "pages_number")
    private short pagesNumber;

    @Column
    private Long isbn;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="publisher_id")
    private Publisher publisher;

    @OneToMany(mappedBy = "book")
    private List<AuthorBook> authorBooks;



   /* @Column(name = "category_id")
    private Integer categoryId;*/
    /*@Column(name = "publisher_id")
    private Integer publisherId;*/

    /*@Override
    public String toString() {
        return "Book{" + "title='" + title + '\'' + ", pagesNumber=" + pagesNumber + ", isbn=" +
               isbn + ", category=" + category + ", publisher=" + publisher + ", authorBooks=" +
               authorBooks + '}';
    }*/

    /* @Override
    public String toString() {
        return "Book{" + "id=" + id + ", title='" + title + '\'' + ", pagesNumber=" + pagesNumber +
               ", isbn=" + isbn + ", categoryName=" + category.getName() + ", publisherName=" + publisher.getName() +
               '}';
    }*/
}
