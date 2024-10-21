package com.nutrilife.principal.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.nutrilife.principal.models.Usuario;
import com.nutrilife.principal.repositories.UsuarioRepository;

import jakarta.servlet.http.HttpSession;

@Service

public class SesionService {
    
    @Autowired UsuarioRepository usuarioRepository;

    public BindingResult login(String email, String password, HttpSession session, BindingResult result){

        Usuario usuario = usuarioRepository.findByEmail(email);
        if(usuario == null){
            result.rejectValue("email", "error", "Correo electronico no registrado");
        }

        else if(!BCrypt.checkpw(password, usuario.getPassword())){
            result.rejectValue("password", "error", "Contraseña incorrecta");
        }
        return result;
    }

    public void logout(HttpSession session){
        session.invalidate();
    }
    
}
