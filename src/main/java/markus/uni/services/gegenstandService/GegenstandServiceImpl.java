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
        try {
            for (int i = 0; i < menge; i++) {
                Gegenstand gegenstand = new Gegenstand();
                gegenstand.setGegenstandName(gegenstandName);
                gegenstand.setFach(this.fachRepository.getByFachName(fachName));
                this.gegenstandRepository.save(gegenstand);
            }
        }catch (Exception e){
            e.printStackTrace();
            return "Ein Fehler ist aufgetreten. Die Gegenstände wurden nicht (korrekt) gespeichert";
        }
        System.out.println("test");
        return "Erfolgreiches Speichern";
    }

    @Override
    public boolean deleteById(Integer gegenstandName) {
        try {
            this.gegenstandRepository.deleteById(gegenstandName);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
