//
//  Feminino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Feminino: Paciente{

    var gravida: Bool = false

    
    init(nome: String, contaminado: Bool, gravida: Bool, dataNascimento: String) {
        self.gravida = gravida
        
        super.init(nome: nome, dataNascimento: dataNascimento, contaminado: contaminado, dataDaVacina: CalculoVacinaFeminino())
    }

    override func imprimir() {
        super.imprimir()
        print("Gravida: \(gravida)")
    }

}
