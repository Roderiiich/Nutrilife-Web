package com.nutrilife.principal.models;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class Sesion {
    
    @NotBlank(message = "El email es requerido.")
    private String email;

    @NotBlank(message = "La contraseña es requerida.")
    private String password;
}
