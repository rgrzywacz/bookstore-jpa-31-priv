package entity;


import javax.persistence.*;

import java.util.List;

import lombok.*;

@Getter
@Setter
@Entity
@ToString
@Table(name = "categories")
@SuppressWarnings("all")
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Category extends BasicEntity {
    @Column
    private String name;
    @Column
    private String code;

    @OneToMany(mappedBy = "category")
    private List<Book> books;
}


