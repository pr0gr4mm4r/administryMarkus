package markus.uni.services.ausleihAbgabeService;

import lombok.AllArgsConstructor;
import markus.uni.entities.AusleihenAbgeben;
import markus.uni.entities.Student;
import markus.uni.repositories.AusleihenRepository;
import markus.uni.repositories.GegenstandRepository;
import markus.uni.repositories.StudentRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.time.LocalDate;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class AusleihAbgabeServiceImpl implements AusleihAbgabeService {
    private final StudentRepository studentRepository;
    private final GegenstandRepository gegenstandRepository;
    private final AusleihenRepository ausleihenRepository;


    @Override
    public String gegenstandAusleihen(String studentName, String handyNummer, Integer gegenstandId) {
        Student student = this.studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer);
        AusleihenAbgeben ausleihenAbgeben = new AusleihenAbgeben();
        ausleihenAbgeben.setAusleihDatum(LocalDate.now());
        ausleihenAbgeben.setGegenstand(this.gegenstandRepository.getOne(gegenstandId));
        ausleihenAbgeben.setStudent(student);
        this.ausleihenRepository.save(ausleihenAbgeben);
        return "success";
    }

    @Override
    public String gegenstandAbgeben(String studentName, String handyNummer, Integer gegenstandId) {
        return null;
    }
}
