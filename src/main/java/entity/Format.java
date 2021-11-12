package entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "formats")
@SuppressWarnings("all")
@Getter
@Setter
public class Format extends BasicEntity {
    private String name;
    private String code;
}
