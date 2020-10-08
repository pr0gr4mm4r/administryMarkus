package markus.uni.services.studentService;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Student;
import markus.uni.repositories.StudentRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@RequiredArgsConstructor
@Service
@Transactional
@CrossOrigin
public class StudentServiceImpl implements StudentService {
    private final StudentRepository studentRepository;

    @Override
    public List<Student> getAll() {
        return this.studentRepository.findAll();
    }

    @Override
    public String addStudent(Student student) {
        if (this.studentRepository.findByStudentNameAndHandyNummer(
                student.getStudentName(), student.getHandyNummer()).isPresent()) {
            Student existingStudent = this.studentRepository.findByStudentNameAndHandyNummer(
                    student.getStudentName(), student.getHandyNummer()).get();
            student.setStudentId(existingStudent.getStudentId());
        }
        this.studentRepository.save(student);
        return "Erfolgreiches Speichern des Studenten";
    }

    @Override
    public Student getStudent(String studentName, String handyNummer) {
        return this.studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer).get();
    }
}
