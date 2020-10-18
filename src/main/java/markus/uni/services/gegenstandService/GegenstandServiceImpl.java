package markus.uni.services.gegenstandService;

import lombok.AllArgsConstructor;
import markus.uni.entities.Fach;
import markus.uni.entities.Gegenstand;
import markus.uni.repositories.FachRepository;
import markus.uni.repositories.GegenstandRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.*;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class GegenstandServiceImpl implements GegenstandService {
    private final GegenstandRepository gegenstandRepository;
    private final FachRepository fachRepository;

    @Override
    public String addGegenstand(List<List<Object>> gegenstandName) {
        String fachName = (String) gegenstandName.get(1).get(0);
        List<Object> gegenstandList = gegenstandName.get(0);
        for (int i = 0; i < gegenstandList.size(); i++) {
            LinkedHashMap linkedHashMap = (LinkedHashMap) gegenstandList.get(i);
            Integer menge = (Integer) linkedHashMap.get("menge");
            String gName = (String) linkedHashMap.get("gegenstandName");
            for (int j = 0; j < menge; j++) {
                Gegenstand gegenstand = new Gegenstand();
                gegenstand.setGegenstandName(gName);
                gegenstand.setAusgeliehen(false);
                gegenstand.setFach(this.fachRepository.getByFachName(fachName));
                gegenstand.setMvp(false);
                this.gegenstandRepository.save(gegenstand);
            }
        }
        return "Erfolgreiches Speichern";
    }

    @Override
    public boolean delete(List<Gegenstand> gegenstandList, String fachName) {
        Fach fach = this.fachRepository.getByFachName(fachName);
        for (int i = 0; i < gegenstandList.size(); i++) {
            String currentGegenstandName = gegenstandList.get(i).getGegenstandName();
            Integer anzahlInFach = this.gegenstandRepository.countWithName(currentGegenstandName, fach.getFachId());
            for (int j = 0; j < anzahlInFach - gegenstandList.get(i).getMenge(); j++) {
                this.gegenstandRepository.setFachToPool(currentGegenstandName, fach.getFachId());
            }
        }
        return true;
    }

    @Override
    public boolean deleteFromPool(List<Gegenstand> gegenstandList) {
        for (int i = 0; i < gegenstandList.size(); i++) {
            String currentGegenstandName = gegenstandList.get(i).getGegenstandName();
                this.gegenstandRepository.deleteFromPool(currentGegenstandName);
        }
        return true;
    }

    @Override
    public boolean toMvp(String fachName, String gegenstandName) {
        Fach fach = this.fachRepository.getByFachName(fachName);
        for (int i = 0; i < fach.getGegenstandList().size(); i++) {
            Gegenstand currentGegenstand = fach.getGegenstandList().get(i);
            if (currentGegenstand.getGegenstandName().equals(gegenstandName)) {
                currentGegenstand.setMvp(true);
            } else {
                currentGegenstand.setMvp(false);
            }
            this.fachRepository.save(fach);
        }
        return true;
    }
}
