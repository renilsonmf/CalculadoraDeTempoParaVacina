//
//  ImpressoraDeDados.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import Foundation

class ImpressoraDeDados {
    
     func imprimir(){
         let listaDePacientes = [
            Feminino(nome: "Larissa", idade: 21, contaminado: false, gravida: true),
            Masculino(nome: "Renilson", idade: 2, contaminado: true),
            Masculino(nome: "Marcosss", idade: 2, contaminado: false),
            Masculino(nome: "Gustavo", idade: 22, contaminado: true),
            Feminino(nome: "Maria", idade: 78, contaminado: true, gravida: false)
             ]
             
         for i in 0...listaDePacientes.count-1{
            print("Nome: \(listaDePacientes[i].nome)")
            print("Idade: \(listaDePacientes[i].idade)")
            print("Sexo: \(listaDePacientes[i].sexo)")
            print("Contaminado: \(listaDePacientes[i].contaminado)")
            print("Tempo Vacina: \(listaDePacientes[i].calculaDataVacina())")
            print("----------------------------------------------------------")
         }
     }
}
