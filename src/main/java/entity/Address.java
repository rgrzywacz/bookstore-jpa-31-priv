package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "addresses")
@SuppressWarnings("all")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column
    private String country;
    @Column
    private String city;
    @Column(name = "zip_code")
    private String zipCode;
    @Column
    private String street;
    @Column(name = "street_no")
    private String streetNo;
    @Column(name = "home_no")
    private String homeNo;
    @OneToMany(mappedBy = "address")
    List<Publisher> publishers;
}
