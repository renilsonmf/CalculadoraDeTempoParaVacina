//
//  ImpressoraDeDados.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import Foundation

class ImpressoraDeDados {
    
    var listaDePacientes: [Paciente] = []
    
    func cadastrarPacientes() -> [Paciente]{
        listaDePacientes = [
            Feminino(nome: "Larissa", idade: 21, contaminado: false, gravida: true),
            Masculino(nome: "Renilson", idade: 2, contaminado: true),
            Masculino(nome: "Marcosss", idade: 2, contaminado: false),
            Masculino(nome: "Gustavo", idade: 22, contaminado: true),
            Feminino(nome: "Maria", idade: 78, contaminado: true, gravida: true),
            Feminino(nome: "Joana", idade: 44, contaminado: true, gravida: true)
             ]
        return listaDePacientes
        }
    
    func imprimir(paciente: Paciente){
           print("Nome: \(paciente.nome)")
           print("Idade: \(paciente.idade)")
           print("Sexo: \(type(of: paciente))") // Imprime o nome da classe
           print("Contaminado: \(paciente.contaminado)")
           print("Tempo Vacina: \(paciente.calculaDataVacina())")
           print("----------------------------------------------------------")
        }

    }

