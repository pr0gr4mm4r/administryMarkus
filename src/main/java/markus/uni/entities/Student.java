package markus.uni.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Student {
    @Id
    @GeneratedValue
    @Column(name = "`studentId`")
    private Integer studentId;
    @Column(name = "`studentName`")
    private String studentName;
    @Column(name = "`handyNummer`")
    private String handyNummer;
    @OneToMany(mappedBy = "student")
    private List<AusleihenAbgeben> ausleihenAbgebenStudent;
}
