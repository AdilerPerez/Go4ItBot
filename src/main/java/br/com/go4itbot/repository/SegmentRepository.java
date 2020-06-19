package br.com.go4itbot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.go4itbot.model.SegmentModel;

@Repository
public interface SegmentRepository extends JpaRepository<SegmentModel, Long>{

}
