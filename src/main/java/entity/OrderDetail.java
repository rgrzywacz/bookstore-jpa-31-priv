package entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "order_details")
@SuppressWarnings("all")
@Getter
@Setter
public class OrderDetail extends BasicEntity {
    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;
    @ManyToOne
    @JoinColumn(name = "copy_id")
    private Copy copy;
}
