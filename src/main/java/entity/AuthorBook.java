package entity;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@SuppressWarnings("all")
@Entity
@Table(name = "authors_books")
public class AuthorBook extends BasicEntity {
    @ManyToOne
    @JoinColumn(name = "book_id")
    private Book book;

    @ManyToOne
    @JoinColumn(name ="author_id")
    private Author author;

    @Override
    public String toString() {
        return "AuthorBook{" + "id=" + id + ", book=" + book + ", author=" + author + '}';
    }

}
