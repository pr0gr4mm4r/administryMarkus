package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Fach;
import markus.uni.entities.Gegenstand;
import markus.uni.services.fachService.FachService;
import markus.uni.services.gegenstandService.GegenstandService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
