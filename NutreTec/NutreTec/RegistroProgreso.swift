//
//  RegistroProgreso.swift
//  NutreTec
//
//  Created by Mariano García Alipi on 24/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

// Un registro de un día del progreso.

class RegistroProgreso: NSObject, Codable {

    var dia : String
    var peso, masaMuscular, porcentajeGrasa : Double
    
    override init() {
        self.dia = ""
        self.peso = 0
        self.masaMuscular = 0
        self.porcentajeGrasa = 0
    }
    
    init(dia : String, peso : Double, masaMuscular : Double, porcentajeGrasa : Double) {
        self.dia = dia
        self.peso = peso
        self.masaMuscular = masaMuscular
        self.porcentajeGrasa = porcentajeGrasa
    }
    
}
