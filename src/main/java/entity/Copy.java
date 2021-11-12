package entity;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "copies")
@SuppressWarnings("all")
@Setter
@Getter
public class Copy extends BasicEntity {
    @ManyToOne
    @JoinColumn(name = "book_id")
    private Book book;
    @ManyToOne
    @JoinColumn(name = "format_id")
    private Format format;
    @Column
    private double cost;
}
