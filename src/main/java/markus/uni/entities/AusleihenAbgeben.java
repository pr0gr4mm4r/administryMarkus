package markus.uni.entities;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.ToString;

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
    @JoinColumn(name = "`student`")
    @JsonIgnore
    @ToString.Exclude
    private Student student;
    @Column(name = "`ausleihInhaltString`")
    private String ausleihInhaltString;
    @Column(name = "`ausleihDatum`")
    private LocalDate ausleihDatum;
    @Column(name = "`kompletteAbgabeDatum`")
    private LocalDate kompletteAbgabeDatum;
}
