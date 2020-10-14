package markus.uni.services.categoryService;

import lombok.AllArgsConstructor;
import markus.uni.entities.Category;
import markus.uni.entities.Fach;
import markus.uni.repositories.CategoryRepository;
import markus.uni.repositories.FachRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Transactional
@CrossOrigin
@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {
    private final CategoryRepository categoryRepository;
    private final FachRepository fachRepository;

    @Override
    public List<Category> getAll() {
        return this.categoryRepository.findAll();
    }

    @Override
    public String setFachsCategory(String fachName, Integer categoryId) {
        Category category = this.categoryRepository.findById(categoryId).get();
        List<Category> categoryList = this.categoryRepository.findAll();
        Fach fach = this.fachRepository.getByFachName(fachName);
        categoryList.forEach(cat -> cat.getFachList().removeIf(
                f -> f.getFachId().equals(fach.getFachId())));
        for (int i = 0; i < categoryList.size(); i++) {
            this.categoryRepository.save(categoryList.get(i));
        }
        fach.setCategory(category);
        category.getFachList().add(fach);
        this.categoryRepository.save(category);
        return "";
    }
}
