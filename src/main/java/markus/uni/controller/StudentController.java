package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.entities.Student;
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

    @GetMapping(value = "/{studentName}/{handyNummer}")
    public Student get(@PathVariable(value = "studentName") String studentName,
                       @PathVariable(value = "handyNummer") String handyNummer) {
        return this.studentService.getStudent(studentName, handyNummer);
    }

    @PostMapping(value = "/add", produces = MediaType.TEXT_PLAIN_VALUE)
    public String add(@RequestBody Student student) {
        return this.studentService.addStudent(student);
    }

    @GetMapping(value = "/all")
    public List<Student> getAll() {
        return this.studentService.getAll();
    }

}
