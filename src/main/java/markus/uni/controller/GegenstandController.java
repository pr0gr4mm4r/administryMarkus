package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Gegenstand;
import markus.uni.services.gegenstandService.GegenstandService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/gegenstand")
@RequiredArgsConstructor
@CrossOrigin
public class GegenstandController {
    private final GegenstandService gegenstandService;

    @GetMapping(value = "/all")
    public List<Gegenstand> getAll() {
        return this.gegenstandService.getAll();
    }

    @PostMapping(value = "/add")
    public String add(@RequestBody Gegenstand gegenstand) {
        this.gegenstandService.addGegenstand(gegenstand);
        return "";
    }
}
