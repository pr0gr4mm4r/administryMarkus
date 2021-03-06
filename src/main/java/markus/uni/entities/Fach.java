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
    @Column(name = "`fachName`", unique = true)
    private String fachName;
    @OneToMany(mappedBy = "fach", cascade = {CascadeType.ALL})
    private List<Gegenstand> gegenstandList;
    @ManyToOne
    @JoinColumn(name = "`category`")
    private Category category;
}
