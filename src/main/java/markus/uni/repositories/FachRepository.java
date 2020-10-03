package markus.uni.repositories;

import markus.uni.entities.Fach;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
@Repository
public interface FachRepository extends JpaRepository<Fach, Integer> {
    @Query(value = "select * from fach where fach_name = :fachName" , nativeQuery = true)
    Fach getByFachName(String fachName);
}
