package markus.uni.services.fachService;

import markus.uni.entities.Fach;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@CrossOrigin
@Service
public interface FachService {
    List<Fach> getAll();
    Fach addFach(Fach fach, String categoryName);

    Fach getPool();

    boolean deleteFachByName(String fachName);

}
