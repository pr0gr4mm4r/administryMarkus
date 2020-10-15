package markus.uni.repositories;

import markus.uni.entities.Fach;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.Optional;

@CrossOrigin
@Repository
public interface FachRepository extends JpaRepository<Fach, Integer> {
    @Query(value = "select * from fach where fach_name = :fachName" , nativeQuery = true)
    Fach getByFachName(String fachName);
    @Query(value = "select max(fach_id) from fach where fach_name like %:shortenedFachName%" , nativeQuery = true)
    Optional<Integer> getFachIdForSort(String shortenedFachName);
    @Query(value = "select * from fach where fach_id > :fachId" , nativeQuery = true)
    List<Fach> getAllWhichAreAffected(Integer fachId);
}
