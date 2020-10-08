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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
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
        ausleihenAbgeben.setAusleihDatum(LocalDate.now());
        ausleihenAbgeben.setStudent(student);
        List<Gegenstand> gegenstandList = new ArrayList<>();
        for (int i = 0; i < gegenstandIdList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandIdList.get(i));
            gegenstand.setAusgeliehen(true);
            gegenstand.setStudent(student);
            student.getGegenstandList().add(gegenstand);
            gegenstandList.add(gegenstand);
        }
        String ausleihInformation = this.fillAusleihInformationString(gegenstandList);
        ausleihenAbgeben.setAusleihInhaltString(ausleihInformation);
        this.ausleihenAbgebenRepository.save(ausleihenAbgeben);
        return "success";
    }

    private String fillAusleihInformationString(List<Gegenstand> ausleihenAbgeben) {
        String resultString = ausleihenAbgeben.stream().map(
                gegenstand -> "GId: " + gegenstand.getGegenstandId() + " | N: " + gegenstand.getGegenstandName() +
                        " | FN: " + gegenstand.getFach().getFachName() + " | "
        ).collect(Collectors.joining());
        resultString = resultString.substring(0, resultString.length() - 3);
        return resultString;
    }

    @Override
    public String gegenstandAbgeben(String studentName, String handyNummer, List<Integer> gegenstandIdList) {
        for (int i = 0; i < gegenstandIdList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(gegenstandIdList.get(i));
            gegenstand.setAusgeliehen(false);
            gegenstand.setStudent(null);
            gegenstandRepository.save(gegenstand);
        }
        Student student = studentRepository.findByStudentNameAndHandyNummer(studentName, handyNummer).get();
        student.setGegenstandList(
                student.getGegenstandList().stream().filter(
                        gegenstand -> gegenstandIdList.contains(
                                gegenstand.getGegenstandId()
                        )).collect(Collectors.toList()));
        studentRepository.save(student);
        List<AusleihenAbgeben> ausleihenAbgebenList = student.getAusleihenAbgebenList().stream().filter(
                ausleihenAbgeben -> ausleihenAbgeben.getKompletteAbgabeDatum() == null
        ).collect(Collectors.toList());
        AusleihenAbgeben currentAusleihenAbgeben = new AusleihenAbgeben();
        for (int i = 0; i < ausleihenAbgebenList.size(); i++) {
            String ausleihInhaltString = ausleihenAbgebenList.get(i).getAusleihInhaltString();
            for (int j = 0; j < gegenstandIdList.size(); j++) {
                Integer gegenstandId = gegenstandIdList.get(j);
                if (ausleihInhaltString.contains("GId: " + gegenstandId)) {
                    currentAusleihenAbgeben = ausleihenAbgebenList.get(i);
                }
            }
        }
        String[] strings = currentAusleihenAbgeben.getAusleihInhaltString().split(Pattern.quote(" | "));
        List<String> result = Arrays.asList(strings).stream().filter(
                string -> string.contains("G")
        ).collect(Collectors.toList());
        List<Integer> integerList = result.stream().map(string -> Integer.valueOf(string.replaceAll("\\D+", ""))).collect(Collectors.toList());
        boolean setDate = true;
        for (int i = 0; i < integerList.size(); i++) {
            Gegenstand gegenstand = this.gegenstandRepository.getOne(integerList.get(i));
            if (gegenstand.getAusgeliehen()) {
                setDate = false;
            }
        }
        if (setDate) {
            currentAusleihenAbgeben.setKompletteAbgabeDatum(LocalDate.now());
            this.ausleihenAbgebenRepository.save(currentAusleihenAbgeben);
        }
        return "success";
    }

    @Override
    public List<AusleihenAbgeben> getAll() {
        return this.ausleihenAbgebenRepository.findAll();
    }
}
