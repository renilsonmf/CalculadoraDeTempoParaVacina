//
//  CalculoVacinaFeminino.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class CalculoVacinaFeminino: CalculoVacina {
    
     override func calculaDataDaVacina(paciente: Paciente) -> String {
        
        guard let pacienteFeminino = paciente as? Feminino else {return ""}
        
        if pacienteFeminino.gravida == true {
            return "Vacina Imediata"
        }else{
            return
            super.calculaDataDaVacina(paciente: paciente)
        }
    }

}
