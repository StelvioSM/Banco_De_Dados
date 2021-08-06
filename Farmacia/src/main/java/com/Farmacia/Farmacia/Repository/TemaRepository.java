package com.Farmacia.Farmacia.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Farmacia.Farmacia.Model.Tema;

@Repository
public interface TemaRepository extends JpaRepository<Tema,Long> {

	List<Tema> findAllByDescricaoContainingIgnoreCase(String nome);
 

}
