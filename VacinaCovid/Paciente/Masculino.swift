//
//  Masculino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Masculino: Paciente {

    init(nome: String, dataNascimento: String, contaminado: Bool) {

        super.init(nome: nome, dataNascimento: dataNascimento, contaminado: contaminado, sexo: 2, dataDaVacina: CalculoVacina())
        }
    }



