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
    @Query(value = "update markus_administry.gegenstand set fach = 180 where gegenstand_name = :gegenstandName and fach != 180 limit  1" , nativeQuery = true)
    void setFachToPool(String gegenstandName);
    @Query(value = "select count(*) from markus_administry.gegenstand where gegenstand_name = :gegenstandName" , nativeQuery = true)
    Integer countWithName(String gegenstandName);
}
