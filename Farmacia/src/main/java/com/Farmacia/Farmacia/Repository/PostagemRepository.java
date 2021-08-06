package com.Farmacia.Farmacia.Repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.Farmacia.Farmacia.Model.Postagem;

public interface PostagemRepository extends JpaRepository<Postagem, Long> {
	public List<Postagem> findAllByTituloContainingIgnoreCase(String titulo);
}
