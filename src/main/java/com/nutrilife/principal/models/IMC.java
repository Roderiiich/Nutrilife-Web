package com.nutrilife.principal.models;

//import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

public class IMC extends Base {

    private Double peso;

    private Double altura;

    private int edad;

    private Double imc;
}
