//
//  ImpressoraDeDados.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import Foundation

class ImpressoraDeDados {
    
    //Converte Data
    func getIdade(dataNascimento: String) -> Int {
          let nascimento = formatDate(dataNascimento)
          let calendario = Calendar.current
          guard let idade = calendario.dateComponents([.year], from: nascimento, to: Date()).year else {
              return 1000 }
          return idade

      }

      func formatDate(_ dataEntrada: String) -> Date {
          let formatador = DateFormatter()
          formatador.dateFormat = "dd/MM/yyyy"
          formatador.locale = Locale(identifier: "en_US_POSIX")
          guard let data = formatador.date(from: dataEntrada) else { return Date() }
          return data

      }
    
    var listaDePacientes: [Paciente] = []
    
    func cadastrarPacientes() -> [Paciente]{
        listaDePacientes = [
            Feminino(nome: "Maria", contaminado: true, gravida: true, dataNascimento: "31/12/1997"),
            Feminino(nome: "Aline", contaminado: false, gravida: false, dataNascimento: "31/12/2000"),
            Masculino(nome: "Renilson", dataNascimento: "31/12/2000", contaminado: true),
            Masculino(nome: "Jonh", dataNascimento: "20/10/2005", contaminado: false)
             ]
        return listaDePacientes
        }
    
    func imprimir(paciente: Paciente){
           print("----------------------------------------------------------")
           print("Nome: \(paciente.nome)")
           print("Idade: \(getIdade(dataNascimento: paciente.dataNascimento))")
           print("Sexo: \(type(of: paciente))") // Imprime o nome da classe
           print("Contaminado: \(paciente.contaminado == true ? "Sim" : "não")") //if ternario
           print("Tempo Vacina: \(paciente.calculaDataVacina())")
        }

    }

