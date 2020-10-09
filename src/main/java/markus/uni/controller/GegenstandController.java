package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.services.gegenstandService.GegenstandService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/gegenstand")
@RequiredArgsConstructor
@CrossOrigin
public class GegenstandController {
    private final GegenstandService gegenstandService;

    @PostMapping(value = "/add", produces = MediaType.TEXT_PLAIN_VALUE)
    public String add(@RequestBody Object[] gegenstandsInfo) {
        return this.gegenstandService.addGegenstand(
                (String) gegenstandsInfo[0],
                String.valueOf(gegenstandsInfo[1]),
                (Integer) gegenstandsInfo[2]);
    }

    @DeleteMapping(value = "/delete/{gegenstandName}")
    public boolean delete(
            @PathVariable(value = "gegenstandName") Integer gegenstandName) {
        return this.gegenstandService.deleteById(gegenstandName);
    }
}
