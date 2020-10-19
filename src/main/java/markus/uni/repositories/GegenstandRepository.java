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
    @Modifying
    @Query(value = "update gegenstand set fach = 180 where gegenstand_name = :gegenstandName " +
            "and fach = :fachId and fach != 180 limit  1" , nativeQuery = true)
    void setFachToPool(String gegenstandName, Integer fachId);
    @Query(value = "select count(*) from gegenstand where gegenstand_name = :gegenstandName" +
            " and fach = :fachId" , nativeQuery = true)
    Integer countWithName(String gegenstandName, Integer fachId);
    @Modifying
    @Query(value = "delete from gegenstand where fach = 180 " +
            "and gegenstand_name =  :currentGegenstandName limit  1" , nativeQuery = true)
    void deleteFromPool(String currentGegenstandName);
}
