package com.nutrilife.principal.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name= "usuarios")
public class Usuario extends Base {
    
    @NotBlank(message="El nombre es requerido")
    @Size(min= 2, message="El nombre debe tener al menos 2 caracteres")
    private String nombre;

    @NotBlank(message="El apellido es requerido")
    @Size(min= 2, message="El apellido debe tener al menos 2 caracteres")
    private String apellido;

    @NotBlank(message = "El email es requerido")
    @Email(message= "el email no es valido")
    private String email;
    
    private String password;

    @Size(min=8, message = "La contraseña es requerida")
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).*$", message = "La contraseña debe contener al menos una letra minúscula, una letra mayúscula y un dígito.")
    @Transient
    private String passwordForm;

    @Transient
    private String passwordConfirm;
    
}
