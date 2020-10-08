package markus.uni.services.ausleihAbgabeService;

import markus.uni.entities.AusleihenAbgeben;
import markus.uni.entities.Student;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@CrossOrigin
@Service
public interface AusleihAbgabeService {
    String gegenstandAusleihen(String studentName, String handyNummer, List<Integer>  gegenstandId);
    String gegenstandAbgeben(String studentName, String handyNummer, List<Integer> gegenstandId);

    AusleihenAbgeben test(Integer id);
}
