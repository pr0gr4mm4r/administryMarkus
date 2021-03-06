package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Gegenstand;
import markus.uni.services.gegenstandService.GegenstandService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/gegenstand")
@RequiredArgsConstructor
@CrossOrigin
public class GegenstandController {
    private final GegenstandService gegenstandService;

    @PostMapping(value = "/add", produces = MediaType.TEXT_PLAIN_VALUE)
    public String add(@RequestBody List<List<Object>> gegenstandsInfo) {
        return this.gegenstandService.addGegenstand(gegenstandsInfo);
    }

    @PutMapping(value = "/delete/{fachName}")
    public boolean delete(
            @RequestBody List<Gegenstand> gegenstandList,
            @PathVariable(value = "fachName") String fachName) {
        return this.gegenstandService.delete(gegenstandList, fachName);
    }

    @PutMapping(value = "/deleteFromPool")
    public boolean deleteFromPool(
            @RequestBody List<Gegenstand> gegenstandList) {
        return this.gegenstandService.deleteFromPool(gegenstandList);
    }

    @PutMapping(value = "/mvp/{fachName}/{gegenstandName}")
    public boolean setMvp(
            @RequestBody List<Object> objectList,
            @PathVariable(value = "fachName") String fachName,
            @PathVariable(value = "gegenstandName") String gegenstandName
    ) {
        return this.gegenstandService.toMvp(fachName, gegenstandName);
    }
}
