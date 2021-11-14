package entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

import lombok.*;


@Getter
@Setter
@ToString
@Entity
@Table(name = "authors")
@NoArgsConstructor
@AllArgsConstructor
@SuppressWarnings("all")
public class Author extends BasicEntity {
    @Column(name="first_name")
    private String firstName;
    @Column(name="second_name")
    private String secondName;
    @Column(name="last_name")
    private String lastName;
    @Column(name="date_of_birth")
    private Date dateOfBirth;
    @Column(name="description")
    private String description;

    @Column(name="sex", columnDefinition="ENUM('M','F')")
    @Enumerated(EnumType.STRING)
    private Sex sex;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "author" )
    private List<AuthorBook> authorBook;


    public Author(String firstName) {
        this.firstName = firstName;
    }

    @Override
    public String toString() {
        return "Author{" + "firstName='" + firstName + '\'' + ", secondName='" + secondName + '\'' +
               ", lastName='" + lastName + '\'' + ", dateOfBirth=" + dateOfBirth +
               ", description='" + description + '\'' + ", sex=" + sex + '}';
    }
}
