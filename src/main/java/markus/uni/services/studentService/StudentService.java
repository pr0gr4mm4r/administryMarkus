package markus.uni.services.studentService;

import markus.uni.entities.Student;

import java.util.List;

public interface StudentService {
    List<Student> getAll();
    String addStudent(Student student);
    Student getStudent(String studentName, String handyNummer);
}
