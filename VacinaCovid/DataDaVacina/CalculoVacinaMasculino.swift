//
//  CalculoVacinaMasculino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class CalculoVacinaMasculino: DataDaVacina {
    func calculaDataDaVacina(idade: Int, contaminado: Bool) -> String {
        
        var tempoParaVacina: String = ""
        let contaminado: Bool = contaminado
        
        // Maior que 70 anos imediato, independente se  contaminado ou não
        if (idade > 70){
            tempoParaVacina = "imediato"
        }
        
        // De 61 até 70 anos
        else if (idade > 60 && idade <= 70){
            if(contaminado == true){
                tempoParaVacina = "A apartir de 60 dias, pois já foi contaminado"
            }else{
                tempoParaVacina = "A partir de 30 dias"
            }
            
        }
        

        // De 51 até 60 anos
        else if (idade > 50 && idade <= 60){
            if(contaminado == true){
                tempoParaVacina = "A partir de 90 dias, pois já foi contaminado "
            }else{
                tempoParaVacina = "A partir de 60 dias"
            }
            
        }
        
        
        //De 31 até 50 anos
        else if (idade > 30 && idade <= 50){
            if(contaminado == true){
                tempoParaVacina = "A partir de 120 dias, pois já foi contaminado"
            }else{
                tempoParaVacina = "A partir de 90 dias"
            }
        }
        
        
        //De 21 até 30 anos
        else if (idade > 20 && idade <= 30){
            if(contaminado == true){
                tempoParaVacina = "Apastir de 150 dias, pos já foi contaminado"
            }else{
                tempoParaVacina = "A partir de 120 dias"
            }
        }
        
        
        // De 0 a 20 anos
        else if (idade >= 0 && idade <= 20){
            if(contaminado == true){
                tempoParaVacina = "Apartir de 180 dias, pois já foi contaminado"
            }else{
                tempoParaVacina = "Apartir de 150 dias"
            }
        
        }
        
        return tempoParaVacina
    }
    

    
}
