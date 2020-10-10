package markus.uni.services.fachService;

import lombok.AllArgsConstructor;
import markus.uni.entities.Fach;
import markus.uni.repositories.FachRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class FachServiceImpl implements FachService {
    private final FachRepository fachRepository;
    @Override
    public List<Fach> getAll() {
        return fachRepository.findAll();
    }

    @Override
    public Fach addFach(Fach fach) {
        return this.fachRepository.save(fach);
    }

    @Override
    public Fach getPool() {
        return this.fachRepository.getOne(180);
    }
}
