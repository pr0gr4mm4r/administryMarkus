package markus.uni.repositories;

import markus.uni.entities.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
    @Query(value = "select * from student where student_name = :studentName" +
            " and handy_nummer = :handyNummer" , nativeQuery = true)
    Student findByStudentNameAndHandyNummer(String studentName, String handyNummer);
}
