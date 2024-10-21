package com.nutrilife.principal.services;

import java.text.DecimalFormat;

import org.springframework.stereotype.Service;

@Service

public class IMCService {


    public Double calculateimc(Double peso, Double altura) {
        Double imc = peso / (altura * altura);
        return Math.round(imc * 10.0) / 10.0;
    }

    public String obtenerClasificacion(Double imc, int edad) {

        // Adultos

        if (edad >= 18 && edad <= 59){

            if (imc < 15){
                return "Desnutricion muy severa";
            } else if (imc >= 15 && imc <= 15.9) {
                return "Desnutricion severa";
            } else if (imc >= 16 && imc <= 16.9) {
                return "Desnutricion moderada";
            } else if (imc >= 17 && imc <= 18.4) {
                return "Desnutricion leve";
            } else if (imc >= 18.5 && imc <= 24.9) {
                return "Peso normal";   
            } else if (imc >= 25 && imc <= 29.9) {
                return "Sobrepeso";  
            } else if (imc >= 30 && imc <= 34.9) {
                return "Obesidad grado 1";
            } else if (imc >= 35 && imc <= 39.9) { 
                return "Obesidad grado 2";
            } else if (imc >= 40 && imc <= 49.9) {
                return "Obesidad grado 3";
            } else {
                return "Obesidad grado 4";
            }
        }

        //Personas mayores

        else {

            if (imc < 23) {
                return "Bajo peso";
            } else if (imc >= 23.1 && imc <= 27.9 ) {
                return "Peso normal";
            } else if (imc >= 28 && imc <= 31.9) {
                return "Sobrepeso";
            } else if (imc >= 32) {
                return "Obesidad";
            }
        }
        return null;
    }
}
