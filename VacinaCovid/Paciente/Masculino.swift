//
//  Masculino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class Masculino: Paciente {

    init(nome: String, contaminado: Bool, dataNascimento: String) {

        super.init(nome: nome, dataNascimento: dataNascimento, contaminado: contaminado, dataDaVacina: CalculoVacina())
        }
    }



