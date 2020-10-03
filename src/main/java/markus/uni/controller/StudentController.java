package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Student;
import markus.uni.services.ausleihAbgabeService.AusleihAbgabeService;
import markus.uni.services.studentService.StudentService;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RequestMapping(value = "/student")
@RequiredArgsConstructor
@RestController
public class StudentController {
    private final StudentService studentService;
    private final AusleihAbgabeService ausleihAbgabeService;

    @PostMapping(value = "/add", produces = MediaType.TEXT_PLAIN_VALUE)
    public String add(@RequestBody Student student) {
        return this.studentService.addStudent(student);
    }

    @PostMapping(value = "/ausleihen/{gegenstandId}", produces = MediaType.TEXT_PLAIN_VALUE)
    public String gegenstandAusleihen(
            @RequestBody String[] studentData,
            @PathVariable(value = "gegenstandId") Integer gegenstandId) {
        return this.ausleihAbgabeService.gegenstandAusleihen(studentData[0], studentData[1], gegenstandId);
    }

    @PostMapping(value = "/abgeben/{gegenstandId}", produces = MediaType.TEXT_PLAIN_VALUE)
    public String gegenstandAbgeben(
            @RequestBody String[] studentData,
            @PathVariable(value = "gegenstandId") Integer gegenstandId) {
        return this.ausleihAbgabeService.gegenstandAbgeben(studentData[0], studentData[1], gegenstandId);
    }
}
