package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
public class Gegenstand implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "`gegenstandId`")
    private Integer gegenstandId;
    @Column(name = "`name`")
    private String name;
    @ManyToOne
    @JoinColumn(name = "fach")
    private Fach fach;
}
