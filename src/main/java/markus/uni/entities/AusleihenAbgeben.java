package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;

@Data
@Entity
public class AusleihenAbgeben implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "`ausleihenAbgebenId`")
    private Integer ausleihenAbgebenId;
    @ManyToOne
    @JoinColumn(name = "`studentId`")
    @JsonIgnore
    private Student student;
    @ManyToOne
    @JoinColumn(name = "`gegenstandId`")
    @JsonIgnore
    private Gegenstand gegenstand;
    @Column(name = "`ausleihDatum`")
    private LocalDate ausleihDatum;
    @Column(name = "`abgabeDatum`")
    private LocalDate abgabeDatum;
}
