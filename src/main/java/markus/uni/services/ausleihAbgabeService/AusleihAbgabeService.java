package markus.uni.services.ausleihAbgabeService;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;

@Transactional
@CrossOrigin
@Service
public interface AusleihAbgabeService {
    String gegenstandAusleihen(String studentName, String handyNummer, Integer gegenstandId);
    String gegenstandAbgeben(String studentName, String handyNummer, Integer gegenstandId);
}
