package com.nutrilife.principal.repositories;

import org.springframework.stereotype.Repository;
import com.nutrilife.principal.models.Usuario;
import org.springframework.data.repository.CrudRepository;
import java.util.List;
import java.util.Optional;


@Repository
public interface UsuarioRepository extends CrudRepository <Usuario, Long> {
    
    List<Usuario> findAll();
    
    Optional<Usuario> findById(Long id);
    
    Usuario findByEmail(String email);
    
    Usuario save(Usuario usuario);
    
    void deleteById(Long id);

    Usuario findByNombre(String nombre);
}
