package com.nutrilife.principal.services;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.nutrilife.principal.models.Usuario;
import com.nutrilife.principal.repositories.UsuarioRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class UsuarioService extends BaseService{
    
    @Autowired
    private UsuarioRepository usuarioRepository;

    @Override
    public Usuario create(Object object) {
        return usuarioRepository.save((Usuario) object);
    }

    @Override
    public void deleteById(Long id) {
        usuarioRepository.deleteById(id);
    }

    @Override
    public Usuario findById(Long id) {
        return usuarioRepository.findById(id).orElse(null);
    }

    @Override
    public Usuario update (Object object) {
        return usuarioRepository.save((Usuario) object);
    }

    @Override
    public List<Usuario> findAll() {
        return usuarioRepository.findAll();
    }


    public BindingResult validateUsuario(Usuario usuario, BindingResult result){
        Usuario usuarioExists = usuarioRepository.findByEmail(usuario.getEmail());
        if(usuarioExists != null) {
            result.rejectValue("email", "errorEmail", "Este email ya esta registrado");
        } else if (!usuario.getPasswordForm().equals(usuario.getPasswordConfirm())) {
            result.rejectValue("passwordConfirm", "errorConfirm", "Las contraseñas no coinciden");
        } else {
            String hashedContraseña = BCrypt.hashpw(usuario.getPasswordForm(), BCrypt.gensalt());
            usuario.setPassword(hashedContraseña);
        }
        return result;
    }
}
