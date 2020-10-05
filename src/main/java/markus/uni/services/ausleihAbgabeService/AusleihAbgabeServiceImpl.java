package markus.uni.services.ausleihAbgabeService;

import lombok.AllArgsConstructor;
import markus.uni.entities.AusleihenAbgeben;
import markus.uni.entities.Gegenstand;
import markus.uni.entities.Student;
import markus.uni.repositories.AusleihenAbgebenRepository;
import markus.uni.repositories.GegenstandRepository;
import markus.uni.repositories.StudentRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.stream.Collectors;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class AusleihAbgabeServiceImpl implements AusleihAbgabeService {
    private final StudentRepository studentRepository;
    private final GegenstandRepository gegenstandRepository;
    private final AusleihenAbgebenRepository ausleihenAbgebenRepository;

    @Override
    public String gegenstandAusleihen(String studentName, String handyNummer, Integer gegenstandId) {
        Student student = this.studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer).get();
        AusleihenAbgeben ausleihenAbgeben = new AusleihenAbgeben();
        ausleihenAbgeben.setAusleihDatum(LocalDate.now());
        Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandId);
        gegenstand.setAusgeliehen(true);
        ausleihenAbgeben.setGegenstand(gegenstand);
        gegenstand.setStudent(student);
        ausleihenAbgeben.setStudent(student);
        this.ausleihenAbgebenRepository.save(ausleihenAbgeben);
        return "success";
    }

    @Override
    public String gegenstandAbgeben(String studentName, String handyNummer, Integer gegenstandId) {
        Gegenstand gegenstandFromRepo = this.gegenstandRepository.getOne(gegenstandId);
        gegenstandFromRepo.setAusgeliehen(false);
        gegenstandFromRepo.setStudent(null);
        Student student = studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer).get();
        System.out.println(student.getStudentId() + " " + gegenstandId);
        student.setGegenstandList(
                student.getGegenstandList().stream().filter(
                        gegenstand -> !gegenstand.getGegenstandId().equals(gegenstandId)).collect(Collectors.toList())
        );
        AusleihenAbgeben ausleihenAbgeben = this.ausleihenAbgebenRepository.findByStudentIdAndGegenstandId(
                student.getStudentId(), gegenstandFromRepo.getGegenstandId()
        ).get();
        ausleihenAbgeben.setAbgabeDatum(LocalDate.now());
        ausleihenAbgebenRepository.save(ausleihenAbgeben);
        return "success";
    }
}
