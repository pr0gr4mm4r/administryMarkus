package markus.uni.services.studentService;

import markus.uni.entities.Student;

public interface StudentService {
    String addStudent(Student student);
    Student getStudent(String studentName, String handyNummer);
}
