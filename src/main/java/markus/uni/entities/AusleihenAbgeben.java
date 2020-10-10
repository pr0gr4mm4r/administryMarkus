package markus.uni.entities;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
@Entity
public class AusleihenAbgeben implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "`ausleihenAbgebenId`")
    private Integer ausleihenAbgebenId;
    @ManyToOne
    @JoinColumn(name = "`student`")
    private Student student;
    @ManyToOne
    @JoinColumn(name = "`fach`")
    private Fach fach;
    @ManyToMany
    private List<Gegenstand> gegenstandList;
    @Column(name = "`datum`")
    private Instant datum;
    @Column(name = "`abgeben`")
    private Boolean abgeben;
}
