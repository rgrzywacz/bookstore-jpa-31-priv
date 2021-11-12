package entity;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Entity(name = "publishers")
@Table
@Getter
@Setter
@SuppressWarnings("all")
public class Publisher extends BasicEntity {
    @Column
    private String name;
    @Column
    private String email;
    @Column
    private String description;
    @Column(name = "dialing_code")
    private String dialingCode;
    @Column(name = "phone_number")
    private String phoneNumber;
    @ManyToOne
    @JoinColumn(name = "address_id")
    private Address address;
}
