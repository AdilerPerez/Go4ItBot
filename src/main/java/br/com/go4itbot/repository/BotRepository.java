package br.com.go4itbot.repository;

import org.springframework.stereotype.Repository;
import br.com.go4itbot.model.BotModel;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface BotRepository extends JpaRepository<BotModel, Long> {

}
