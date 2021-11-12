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

    @ManyToOne
    @JoinColumn(name="publisher_id")
    private Publisher publisher;

    @OneToMany(mappedBy = "book")
    private List<AuthorBook> authorBooks;

   /* @Column(name = "category_id")
    private Integer categoryId;*/
    /*@Column(name = "publisher_id")
    private Integer publisherId;*/

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", title='" + title + '\'' + ", pagesNumber=" + pagesNumber +
               ", isbn=" + isbn + ", categoryName=" + category.getName() + ", publisherName=" + publisher.getName() +
               '}';
    }
}
