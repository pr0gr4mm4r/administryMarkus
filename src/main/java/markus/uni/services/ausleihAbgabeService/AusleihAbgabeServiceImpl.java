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
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
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
    public String gegenstandAusleihen(String studentName, String handyNummer, List<Integer> gegenstandIdList) {
        Student student = this.studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer).get();
        AusleihenAbgeben ausleihenAbgeben = new AusleihenAbgeben();
        ausleihenAbgeben.setStudent(student);
        List<Gegenstand> gegenstandList = new ArrayList<>();
        for (int i = 0; i < gegenstandIdList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandIdList.get(i));
            gegenstand.setAusgeliehen(true);
            gegenstand.setStudent(student);
            student.getGegenstandList().add(gegenstand);
            gegenstandList.add(gegenstand);
        }
        ausleihenAbgeben.setGegenstandList(gegenstandList);
        ausleihenAbgeben.setDatum(Instant.now().plus(2, ChronoUnit.HOURS));
        ausleihenAbgeben.setFach(gegenstandList.get(0).getFach());
        ausleihenAbgeben.setAbgeben(false);
        this.ausleihenAbgebenRepository.save(ausleihenAbgeben);
        for (int i = 0; i < gegenstandIdList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandIdList.get(i));
            gegenstand.getAusleihenAbgebenList().add(ausleihenAbgeben);
        }
        return "success";
    }

    @Override
    public String gegenstandAbgeben(String studentName, String handyNummer, List<Integer> gegenstandIdList) {
        Student student = this.studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer).get();
        AusleihenAbgeben ausleihenAbgeben = new AusleihenAbgeben();
        ausleihenAbgeben.setStudent(student);
        List<Gegenstand> gegenstandList = new ArrayList<>();
        for (int i = 0; i < gegenstandIdList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandIdList.get(i));
            gegenstand.setAusgeliehen(false);
            gegenstand.setStudent(null);
            gegenstandList.add(gegenstand);
        }
        student.setGegenstandList(student.getGegenstandList().stream().filter(
                gegenstand1 -> gegenstandList.stream().map(
                        Gegenstand::getGegenstandId).collect(Collectors.toList()).contains(
                                gegenstand1.getGegenstandId())).collect(Collectors.toList()));
        ausleihenAbgeben.setGegenstandList(gegenstandList);
        ausleihenAbgeben.setDatum(Instant.now().plus(2, ChronoUnit.HOURS));
        ausleihenAbgeben.setFach(gegenstandList.get(0).getFach());
        ausleihenAbgeben.setAbgeben(true);
        this.ausleihenAbgebenRepository.save(ausleihenAbgeben);
        for (int i = 0; i < gegenstandIdList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandIdList.get(i));
            gegenstand.getAusleihenAbgebenList().add(ausleihenAbgeben);
        }
        return "success";
    }

    @Override
    public List<AusleihenAbgeben> getAll() {
        return this.ausleihenAbgebenRepository.findAll();
    }
}
