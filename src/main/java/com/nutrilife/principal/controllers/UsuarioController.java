package com.nutrilife.principal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nutrilife.principal.models.Sesion;
import com.nutrilife.principal.models.Usuario;
import com.nutrilife.principal.services.UsuarioService;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@AllArgsConstructor
@Controller
@RequestMapping("/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("usuario", usuarioService.findAll());
        return "register.jsp";
    }

    @GetMapping("/nuevo")
    public String create(@ModelAttribute("usuario") Usuario usuario) {
        return "register.jsp";
    }

    @PostMapping("/nuevo")
    public String save(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult result, Model model) {
        result = usuarioService.validateUsuario(usuario, result);
        if (result.hasErrors()) {
            model.addAttribute("sesion", new Sesion());
            return "register.jsp";
        }
        usuarioService.create(usuario);
        return "redirect:/";
    }

    @RequestMapping("/editar/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        model.addAttribute("usuario", usuarioService.findById(id));
        return "";
    }

    @PostMapping("editar/{id}")
    public String update(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult result) {
        result = usuarioService.validateUsuario(usuario, result);
        if (result.hasErrors()) {
            return "";
        }
        return "";
    }

    @RequestMapping("/eliminar/{id}")
    public String delete(@PathVariable("id") Long id) {
        usuarioService.deleteById(id);
        return "";
    }

}
