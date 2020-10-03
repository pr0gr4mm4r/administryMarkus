package markus.uni.repositories;

import markus.uni.entities.Gegenstand;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;



@CrossOrigin
@Repository
public interface GegenstandRepository extends JpaRepository<Gegenstand, Integer> {
}
