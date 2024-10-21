package com.nutrilife.principal.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nutrilife.principal.models.Articulo;

@Repository

public interface ArticuloRepository extends CrudRepository <Articulo, Long>{
    
    List<Articulo> findAll();

}
