package markus.uni.services.gegenstandService;

import lombok.AllArgsConstructor;
import markus.uni.entities.Gegenstand;
import markus.uni.repositories.FachRepository;
import markus.uni.repositories.GegenstandRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class GegenstandServiceImpl implements GegenstandService {
    private final GegenstandRepository gegenstandRepository;
    private final FachRepository fachRepository;

    @Override
    public String addGegenstand(String gegenstandName, String fachName, Integer menge) {
        for (int i = 0; i < menge; i++) {
            Gegenstand gegenstand = new Gegenstand();
            gegenstand.setName(gegenstandName);
            gegenstand.setFach(this.fachRepository.getByFachName(fachName));
            this.gegenstandRepository.save(gegenstand);
        }
        return "successful save";
    }

    @Override
    public boolean deleteById(Integer index) {
        try {
            this.gegenstandRepository.deleteById(index);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
