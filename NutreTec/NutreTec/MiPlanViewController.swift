//
//  MiPlanViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 22/04/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class MiPlanViewController: UIViewController {

    var estaEditando = false
    
    @IBOutlet weak var btnEditar: UIButton!
    
    @IBOutlet weak var tfCarnes: UITextField!
    @IBOutlet weak var tfVegetales: UITextField!
    @IBOutlet weak var tfLeguminosas: UITextField!
    @IBOutlet weak var tfAzucares: UITextField!
    @IBOutlet weak var tfCereales: UITextField!
    @IBOutlet weak var tfFrutas: UITextField!
    @IBOutlet weak var tfGrasas: UITextField!
    @IBOutlet weak var tfLeche: UITextField!
    @IBOutlet weak var tfAgua: UITextField!
    
    // Todos los campos de texto.
    var fields : [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fields =   [ tfCarnes, tfVegetales, tfLeguminosas,
                          tfAzucares, tfCereales, tfFrutas,
                          tfGrasas, tfLeche, tfAgua
                        ]
    }

    // Cuando se presiona el botón "Editar".
    @IBAction func tapEditar(_ sender: Any) {
        
        // Habilitar/deshabilitar los campos de texto.
        estaEditando = !estaEditando
        
        if estaEditando {
            btnEditar.setTitle("Guardar", for: .normal)
        } else {
            btnEditar.setTitle("Editar", for: .normal)
        }
        
        for i in 0..<fields.count {
            fields[i].isEnabled = estaEditando
        }
        
    }
    

}

