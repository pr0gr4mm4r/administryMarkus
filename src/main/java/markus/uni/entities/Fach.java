package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
public class Fach implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "`fachId`")
    private Integer fachId;
    @Column(name = "`name`")
    private String name;
    @OneToMany(mappedBy = "fach")
    private List<Gegenstand> gegenstandList;
}
