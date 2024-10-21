package com.nutrilife.principal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nutrilife.principal.models.Sesion;
import com.nutrilife.principal.models.Usuario;
import com.nutrilife.principal.repositories.UsuarioRepository;
import com.nutrilife.principal.services.SesionService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@RequestMapping("/iniciarsesion")
@Controller

public class SesionController {

    @Autowired
    SesionService sesionService;

    @Autowired
    UsuarioRepository usuarioRepository;

    @GetMapping("")
    public String vistaLogin(Model model) {
        model.addAttribute("sesion", new Sesion());
        return "login.jsp";
    }

    @PostMapping("")
    public String login(@Valid @ModelAttribute Sesion sesion, BindingResult result, HttpSession currentSession,
            Model model) {

        if (result.hasErrors()) {
            model.addAttribute("usuario", new Usuario());
            return "login.jsp";
        }

        result = sesionService.login(sesion.getEmail(), sesion.getPassword(), currentSession, result);
        if (result.hasErrors()) {
            model.addAttribute("usuario", new Usuario());
            return "login.jsp";
        }

        Usuario usuario = usuarioRepository.findByEmail(sesion.getEmail()); // Asegúrate de que el repository esté
                                                                            // inyectado
        if (usuario != null) {
            currentSession.setAttribute("nombre", usuario.getNombre());
        }

        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/iniciarsesion";
    }
}
