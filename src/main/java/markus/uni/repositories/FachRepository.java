package markus.uni.repositories;

import markus.uni.entities.Fach;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
@Repository
public interface FachRepository extends JpaRepository<Fach, Integer> {
}
