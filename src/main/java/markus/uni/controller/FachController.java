package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Fach;
import markus.uni.services.fachService.FachService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/fach")
@RequiredArgsConstructor
@CrossOrigin
public class FachController {
    private final FachService fachService;

    @GetMapping(value = "/all")
    public List<Fach> getAll() {
        return this.fachService.getAll();
    }

    @GetMapping(value = "/pool")
    public Fach getOne() {
        return this.fachService.getPool();
    }

    @PutMapping(value = "/add")
    public Fach add(@RequestBody Fach fach) {
        return this.fachService.addFach(fach);
    }

    @DeleteMapping(value = "/delete/{fachName}")
    public boolean delete(@PathVariable(value = "fachName") String fachName) {
        return this.fachService.deleteFachByName(fachName);
    }
}
