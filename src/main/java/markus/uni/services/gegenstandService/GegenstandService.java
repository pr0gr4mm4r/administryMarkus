package markus.uni.services.gegenstandService;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;

@Transactional
@CrossOrigin
@Service
public interface GegenstandService {
    String addGegenstand(String gegenstand, String fachId, Integer menge);
    boolean deleteById(Integer gegenstandName);
}
