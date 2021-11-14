package dto;

import lombok.*;
import lombok.ToString.Include;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString
public class BookDto {
    private int id;
    private String title;
    private String categoryCode;
    private String publisherName;
    private Short pagesNumber;

}
