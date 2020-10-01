package markus.uni.controller;

import com.google.gson.Gson;
import lombok.RequiredArgsConstructor;
import markus.uni.entities.Gegenstand;
import markus.uni.services.gegenstandService.GegenstandService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/gegenstand")
@RequiredArgsConstructor
@CrossOrigin
public class GegenstandController {
    private final GegenstandService gegenstandService;

    @PostMapping(value = "/add")
    public String add(@RequestBody Object[] gegenstandsInfo ) {
        System.out.println((String)gegenstandsInfo[0]);
        System.out.println(String.valueOf(gegenstandsInfo[1]));
        System.out.println((Integer)gegenstandsInfo[2]);

        this.gegenstandService.addGegenstand(
                (String)gegenstandsInfo[0], String.valueOf(gegenstandsInfo[1]), (Integer)gegenstandsInfo[2]);
        return "";
    }

    @DeleteMapping(value = "/delete/{index}")
    public boolean delete(
            @PathVariable(value = "index") Integer index) {
        return this.gegenstandService.deleteById(index);
    }
}
