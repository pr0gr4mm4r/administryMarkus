package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
public class Category implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "`categoryId`")
    private Integer categoryId;
    @Column(name = "`categoryName`")
    private String categoryName;
    @JsonIgnore
    @OneToMany(mappedBy = "category")
    private List<Fach> fachList;
    @Transient
    private boolean selected;
}
