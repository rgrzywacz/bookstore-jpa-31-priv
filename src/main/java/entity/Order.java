package entity;

import javax.persistence.*;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "orders")
@SuppressWarnings("all")
@Getter
@Setter
public class Order extends BasicEntity{
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;
    @Column
    private Integer discount;
    @ManyToOne
    @JoinColumn(name = "payment_id")
    private PaymentType paymentType;

    @Column(name = "order_date")
    private LocalDateTime orderDate;
}
