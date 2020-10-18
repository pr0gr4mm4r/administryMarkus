package markus.uni.repositories;


import markus.uni.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    Category getByCategoryName(String categoryName);
}
