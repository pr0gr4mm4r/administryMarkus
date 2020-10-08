package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.AusleihenAbgeben;
import markus.uni.entities.Student;
import markus.uni.services.ausleihAbgabeService.AusleihAbgabeService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/ausleihenAbgeben")
@RequiredArgsConstructor
@CrossOrigin
public class AusleihenAbgebenController {

    private final AusleihAbgabeService ausleihAbgabeService;

    @GetMapping(value = "/all")
    public List<AusleihenAbgeben> getAll() {
        return this.ausleihAbgabeService.getAll();
    }

    @PostMapping(value = "/ausleihen", produces = MediaType.TEXT_PLAIN_VALUE)
    public String gegenstandAusleihen(
            @RequestBody Object[] studentAndGegenstandIdListData) {
        return this.ausleihAbgabeService.gegenstandAusleihen(
                (String)studentAndGegenstandIdListData[0],
                (String)studentAndGegenstandIdListData[1],
                (List<Integer>)studentAndGegenstandIdListData[2]
        );
    }

    @PostMapping(value = "/abgeben", produces = MediaType.TEXT_PLAIN_VALUE)
    public String gegenstandAbgeben(
            @RequestBody Object[] studentAndGegenstandIdListData) {
        return this.ausleihAbgabeService.gegenstandAbgeben(
                (String)studentAndGegenstandIdListData[0],
                (String)studentAndGegenstandIdListData[1],
                (List<Integer>)studentAndGegenstandIdListData[2]);
    }
}
