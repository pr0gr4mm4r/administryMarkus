package markus.uni.repositories;

import markus.uni.entities.AusleihenAbgeben;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.Optional;

@CrossOrigin
@Repository
public interface AusleihenAbgebenRepository extends JpaRepository<AusleihenAbgeben, Integer> {
    @Query(value = "select * from ausleihen_abgeben where student_id = :studentId " +
            "and abgabe_datum Is NULL", nativeQuery = true)
    Optional<List<AusleihenAbgeben>> findByStudentIdAndGegenstandId(
            Integer studentId);
}
