package markus.uni.entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Entity
public class Student {
    @Id
    @GeneratedValue
    @Column(name = "`studentId`")
    private Integer studentId;
    @Column(name = "`name`")
    private String name;
}
