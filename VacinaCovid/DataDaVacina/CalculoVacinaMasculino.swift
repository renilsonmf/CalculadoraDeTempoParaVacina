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
        
        if (idade > 70){
            if(contaminado == true){
                tempoParaVacina = "imediato + 30 dias"
            }else{
                tempoParaVacina = "imediato"
            }
        }
        
        else if (idade > 60 && idade <= 70){
            tempoParaVacina = "A partir de 30 dias"
        }
        
        else if (idade > 50 && idade <= 60){
            tempoParaVacina = "A partir de 60 dias"
        }
        
        else if (idade > 30 && idade <= 50){
            tempoParaVacina = "A partir de 90 dias"
        }
        
        else if (idade > 20 && idade <= 30){
            if(contaminado == true){
                tempoParaVacina = "120 + 30 dias"
            }else{
                tempoParaVacina = "A partir de 120 dias"
            }
        }
        
        else if (idade >= 0 && idade <= 20){
            tempoParaVacina = "Apartir de 150 dias"
        }
        return tempoParaVacina
    }
    

    
}
