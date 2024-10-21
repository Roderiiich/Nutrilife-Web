package com.nutrilife.principal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nutrilife.principal.models.Sesion;
import com.nutrilife.principal.models.Usuario;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor

public class InicioController {

    @GetMapping("/")
    public String inicio(Model model) {
        model.addAttribute("usuario", new Usuario());
        model.addAttribute("sesion", new Sesion());
        return "index.jsp";
    }
}
