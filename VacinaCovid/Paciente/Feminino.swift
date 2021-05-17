//
//  Feminino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Feminino: Paciente{

  
//    
//    func verificaSeTaGravida(dataVacina: CalculoVacinaFeminino, gravida: Bool) -> String{
//        var tempoVacina = ""
//        if gravida == true {
//            tempoVacina = "Imediata - Esta gravida"
//        }else{
//            tempoVacina = "testeeeee"
//        }
//        return tempoVacina
//    }
        
    init(nome: String, idade: Int, contaminado: Bool, gravida: Bool) {
        super.init(nome: nome, idade: idade, contaminado: contaminado, sexo: 2, dataDaVacina: CalculoVacinaFeminino())
    }


    
}
