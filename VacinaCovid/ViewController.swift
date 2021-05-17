//
//  ViewController.swift
//  VacinaCovid
//
//  Created by Renilson Moreira Ferreira on 14/05/21.
//

import UIKit

class ViewController: UIViewController {

    let impressora = ImpressoraDeDados()
    var listaPaciente: [Paciente] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         listaPaciente = impressora.cadastrarPacientes()
         todosOsPacientes()
    }
    
    func todosOsPacientes(){
        for i in listaPaciente{
            i.imprimir()
        }
    }


}

