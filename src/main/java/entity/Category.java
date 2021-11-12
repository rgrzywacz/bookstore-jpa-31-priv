package entity;


import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Entity
@ToString
@Table(name = "categories")
@SuppressWarnings("all")
public class Category extends BasicEntity {
    @Column
    private String name;
    @Column
    private String code;

}
