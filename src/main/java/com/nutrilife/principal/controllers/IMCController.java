package com.nutrilife.principal.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nutrilife.principal.models.Articulo;
import com.nutrilife.principal.services.ArticuloService;
import com.nutrilife.principal.services.IMCService;

import jakarta.servlet.http.HttpSession;

@Controller

public class IMCController {

    @Autowired
    private IMCService imcService;

    @Autowired
    private ArticuloService articuloService;

    public IMCController(IMCService imcService) {
        this.imcService = imcService;
    }

    @GetMapping("/calcular")
    public String calcular(HttpSession session, Model model) {
        String nombre = (String) session.getAttribute("nombre");
        model.addAttribute("nombre", nombre);

        Double imc = (Double) session.getAttribute("imc");
        String clasificacion = (String) session.getAttribute("clasificacion");

        if (imc != null) {
            model.addAttribute("imc", imc);
            model.addAttribute("clasificacion", clasificacion);
        }
        return "calculadora.jsp";
    }

    @PostMapping("/calcular")
    public String calculate(@RequestParam("peso") double peso,
            @RequestParam("altura") double altura,
            @RequestParam("edad") int edad, Model model, HttpSession session) {

        double imc = imcService.calculateimc(peso, altura);
        String clasificacion = imcService.obtenerClasificacion(imc, edad);

        model.addAttribute("imc", imc);
        model.addAttribute("clasificacion", clasificacion);

        session.setAttribute("imc", imc);
        session.setAttribute("clasificacion", clasificacion);

        List<Articulo> articulosRecomendados = articuloService.obtenerArticulos();
        model.addAttribute("articulosRecomendados", articulosRecomendados);

        return "resultadoIMC.jsp";
    }

    @GetMapping("/resultadoIMC")
    public String mostrarResultado(HttpSession session, Model model) {
        Double imc = (Double) session.getAttribute("imc");
        String clasificacion = (String) session.getAttribute("clasificacion");

        if (imc != null) {
            model.addAttribute("imc", imc);
            model.addAttribute("clasificacion", clasificacion);
        }

        return "resultadoIMC.jsp";
    }
}
