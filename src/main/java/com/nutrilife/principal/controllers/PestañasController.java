package com.nutrilife.principal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller

public class PestañasController {

    @GetMapping("/nutricionistas")
    public String mostrarNutricionistas(HttpSession session, Model model) {
        String nombre = (String) session.getAttribute("nombre");
        model.addAttribute("nombre", nombre);
        return "nutricionistas.jsp";
    }

    @GetMapping("/gimnasios")
    public String mostrarGimnasios(HttpSession session, Model model) {
        String nombre = (String) session.getAttribute("nombre");
        model.addAttribute("nombre", nombre);
        return "gimnasios.jsp";
    }

    @GetMapping("/entrenador")
    public String mostrarEntrenadores(HttpSession session, Model model) {
        String nombre = (String) session.getAttribute("nombre");
        model.addAttribute("nombre", nombre);
        return "entrenadores.jsp";
    }

    @GetMapping("/articuloSalud")
    public String mostrarArticuloSalud(HttpSession session, Model model) {
        String nombre = (String) session.getAttribute("nombre");
        model.addAttribute("nombre", nombre);
        return "articuloSalud.jsp";
    }

    @GetMapping("/articuloSedentarismo")
    public String mostrarArticuloSedentarismo(HttpSession session, Model model) {
        String nombre = (String) session.getAttribute("nombre");
        model.addAttribute("nombre", nombre);
        return "articuloSedentarismo.jsp";
    }

}
