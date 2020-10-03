package markus.uni.entities;

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
    @Column(name = "`fachName`")
    private String fachName;
    @OneToMany(mappedBy = "fach")
    private List<Gegenstand> gegenstandList;
}
