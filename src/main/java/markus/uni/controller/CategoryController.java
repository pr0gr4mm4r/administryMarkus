package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Category;
import markus.uni.entities.Fach;
import markus.uni.services.categoryService.CategoryService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/category")
@RequiredArgsConstructor
@CrossOrigin
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping(value = "/all")
    public List<Category> getAll() {
        return this.categoryService.getAll();
    }

    @PutMapping(value = "/setFachsCategory/{fachName}/{categoryId}")
    public String setFachsCategory(
            @PathVariable(value = "fachName") String fachName,
            @PathVariable(value = "categoryId") Integer categoryId) {
        return this.categoryService.setFachsCategory(fachName, categoryId);
    }
}
