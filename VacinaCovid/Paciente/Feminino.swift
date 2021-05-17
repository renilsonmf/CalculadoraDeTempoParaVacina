//
//  Feminino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Feminino: Paciente{

    var gravida: Bool = false
    
    init(nome: String, idade: Int, contaminado: Bool, gravida: Bool) {
        
        self.gravida = gravida
        
        super.init(nome: nome, idade: idade, contaminado: contaminado, sexo: 2, dataDaVacina: CalculoVacinaFeminino())
       
    }
    override func imprimir() {
        super.imprimir()
        print("Gravida: \(gravida)")
    }

}
