package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.ToString;

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
    @ToString.Exclude
    private List<Gegenstand> gegenstandList;
}
