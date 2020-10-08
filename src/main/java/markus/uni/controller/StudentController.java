package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.AusleihenAbgeben;
import markus.uni.entities.Student;
import markus.uni.services.ausleihAbgabeService.AusleihAbgabeService;
import markus.uni.services.studentService.StudentService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RequestMapping(value = "/student")
@RequiredArgsConstructor
@RestController
public class StudentController {
    private final StudentService studentService;
    private final AusleihAbgabeService ausleihAbgabeService;

    @GetMapping(value = "/{studentName}/{handyNummer}")
    public Student get(@PathVariable(value = "studentName") String studentName,
                       @PathVariable(value = "handyNummer") String handyNummer) {
        return this.studentService.getStudent(studentName, handyNummer);
    }

    @PostMapping(value = "/add", produces = MediaType.TEXT_PLAIN_VALUE)
    public String add(@RequestBody Student student) {
        return this.studentService.addStudent(student);
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

    /*@GetMapping(value = "/{ausleihenAbgeben}")
    public AusleihenAbgeben getAusleihenAbgeben(
            @PathVariable(value = "ausleihenAbgeben") Integer ausleihenAbgeben) {
        return this.ausleihAbgabeService.test(ausleihenAbgeben);
    }*/
}
