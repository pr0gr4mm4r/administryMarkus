package markus.uni.services.gegenstandService;

import lombok.AllArgsConstructor;
import markus.uni.entities.Gegenstand;
import markus.uni.repositories.GegenstandRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class GegenstandServiceImpl implements GegenstandService{
    private final GegenstandRepository gegenstandRepository;
    @Override
    public List<Gegenstand> getAll() {
        return this.gegenstandRepository.findAll();
    }

    @Override
    public String addGegenstand(Gegenstand gegenstand) {
        this.gegenstandRepository.save(gegenstand);
        return "";
    }
}
