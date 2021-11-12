package entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "payment_types")
@SuppressWarnings("all")
@Getter
@Setter
public class PaymentType extends BasicEntity {
    private String name;
    private String code;

}
