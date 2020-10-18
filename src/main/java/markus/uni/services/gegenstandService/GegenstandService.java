package markus.uni.services.gegenstandService;

import markus.uni.entities.Gegenstand;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@CrossOrigin
@Service
public interface GegenstandService {
    String addGegenstand(List<List<Object>> gegenstand);
    boolean delete(List<Gegenstand> gegenstandName, String fachName);

    boolean deleteFromPool(List<Gegenstand> gegenstandList);

    boolean toMvp(String fachName, String gegenstandName);
}
