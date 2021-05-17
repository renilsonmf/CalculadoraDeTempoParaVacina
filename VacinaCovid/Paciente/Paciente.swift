//
//  Paciente.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Paciente{
    var nome: String
    var dataNascimento: String
    var contaminado: Bool
    var dataDaVacina: CalculoVacina
 
    
    init(nome: String, dataNascimento: String, contaminado: Bool, dataDaVacina: CalculoVacina = CalculoVacina()) {
        self.dataNascimento = dataNascimento
        self.nome = nome
        self.contaminado = contaminado
        self.dataDaVacina = dataDaVacina
    }
    
    func calculaDataVacina() -> String{
        return dataDaVacina.calculaDataDaVacina(paciente: self)
    }
    
    func imprimirPaciente(){
        let impressoraDeDados = ImpressoraDeDados()
        impressoraDeDados.imprimir(paciente: self)
    }
    
    
    
}

