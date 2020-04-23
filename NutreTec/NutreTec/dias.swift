//
//  dias.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 22/04/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class dias: NSObject {
    var carne = 0
    var vegetal = 0
    var leche = 0
    var grasa = 0
    var fruta = 0
    var agua = 0
    var leguminosa = 0
    var azucar = 0
    var cereales = 0
    var dia = ""
    
    init(carne : Int, vegetal : Int, leche : Int, grasa : Int, fruta : Int, agua : Int, leguminosa : Int, azucar : Int, cereales : Int, dia : String) {
        self.carne = carne
        self.vegetal = vegetal
        self.leche = leche
        self.grasa = grasa
        self.fruta = fruta
        self.agua = agua
        self.leguminosa = leguminosa
        self.azucar = azucar
        self.cereales = cereales
        self.dia = dia
        
    }
    
    
    

}
