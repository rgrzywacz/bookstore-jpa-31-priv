package entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "customer_types")
@SuppressWarnings("all")
@Getter
@Setter
public class CustomerType extends BasicEntity {
    private String name;
    private String code;
}
