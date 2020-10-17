package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
public class Gegenstand implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "`gegenstandId`")
    private Integer gegenstandId;
    @Column(name = "`gegenstandName`")
    private String gegenstandName;
    @ManyToOne
    @JoinColumn(name = "`fach`")
    @JsonIgnore
    @ToString.Exclude
    private Fach fach;
    @Column(name = "`ausgeliehen`")
    private Boolean ausgeliehen;
    @ToString.Exclude
    @ManyToOne
    @JoinColumn(name = "`student`")
    @JsonIgnore
    private Student student;
    @JsonIgnore
    @ManyToMany(mappedBy = "gegenstandList")
    private List<AusleihenAbgeben> ausleihenAbgebenList;
    @Transient
    private Integer menge;
    @Column(name = "`mvp`")
    private Boolean mvp;
}
