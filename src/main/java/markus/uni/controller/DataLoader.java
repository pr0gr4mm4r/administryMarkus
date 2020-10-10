package markus.uni.controller;

import lombok.RequiredArgsConstructor;
import markus.uni.repositories.GegenstandRepository;
import markus.uni.repositories.FachRepository;
import org.hibernate.tool.schema.internal.exec.ScriptTargetOutputToFile;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
public class DataLoader implements ApplicationRunner {

    private final FachRepository fachRepository;
    private final GegenstandRepository gegenstandRepository;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        /*for (int i = 0; i < 50; i++) {
            fachRepository.save(new Fach());
        }*/
    }
}
