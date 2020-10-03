package markus.uni.services.studentService;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Student;
import markus.uni.repositories.StudentRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;

@RequiredArgsConstructor
@Service
@Transactional
@CrossOrigin
public class StudentServiceImpl implements StudentService {
    private final StudentRepository studentRepository;

    @Override
    public String addStudent(Student student) {
        try {
            this.studentRepository.save(student);
        } catch (Exception e) {
            return "Student bereits persistiert oder ein Fehler";
        }
        return "Erfolgreiches Speichern des Studenten";
    }
}
