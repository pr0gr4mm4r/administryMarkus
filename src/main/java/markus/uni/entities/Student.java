package markus.uni.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
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
    private List<Gegenstand> gegenstandList;
    @OneToMany(mappedBy = "student")
    private List<AusleihenAbgeben> ausleihenAbgebenList;
}
