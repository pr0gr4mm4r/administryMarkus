package markus.uni.services.categoryService;

import markus.uni.entities.Category;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@CrossOrigin
@Service
public interface CategoryService {
    List<Category> getAll();

    String setFachsCategory(String fachName, Integer categoryId);

    String createCategory(Category category);
}
