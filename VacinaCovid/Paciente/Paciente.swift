//
//  Paciente.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Paciente{
    var nome: String
    var idade: Int = 0
    var contaminado: Bool
    var sexo: Int
    var dataDaVacina: CalculoVacina
 
    
    init(nome: String, dataNascimento: String, contaminado: Bool, sexo: Int, dataDaVacina: CalculoVacina = CalculoVacina()) {
        let idade = ImpressoraDeDados().getIdade(dataNascimento: dataNascimento)
        self.nome = nome
        self.idade = idade
        self.contaminado = contaminado
        self.sexo = sexo
        self.dataDaVacina = dataDaVacina
    }
    
    func calculaDataVacina() -> String{
        return dataDaVacina.calculaDataDaVacina(paciente: self)
    }
    
    func imprimir(){
        let impressoraDeDados = ImpressoraDeDados()
        impressoraDeDados.imprimir(paciente: self)
    }
    
    
    
}

