package entity;

import javax.persistence.*;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "customers")
@SuppressWarnings("all")
@Getter
@Setter
public class Customer extends BasicEntity{
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "create_date")
    private LocalDateTime createDate;
    @Column(name = "phone_number")
    private Integer phoneNumber;
    @Column
    private String login;
    @Column
    private String password;
    @Column(name = "dialing_code")
    private String dialingCode;
    @Column
    private String email;
    @Column(columnDefinition="ENUM('M','F','Other')")
    @Enumerated(EnumType.STRING)
    private Sex sex;
    @Column(name = "birth_date")
    private Date dateOfBirth;
    @ManyToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "customer")
    private List<Order> orders;
}
