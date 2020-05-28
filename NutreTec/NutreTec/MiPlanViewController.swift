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
    
    // Todos los campos de texto y su nombre.
    var fields : [UITextField]!
    var names : [String]!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        // Do any additional setup after loading the view.
        fields =   [ tfCarnes, tfVegetales, tfLeguminosas,
                          tfAzucares, tfCereales, tfFrutas,
                          tfGrasas, tfLeche, tfAgua
                        ]
        names = [ "carnes", "vegetales", "leguminosas", "azucares", "cereales", "frutas", "grasas", "leche", "agua" ]
        
        // Cargar los valores guardados.
        // Si no hay guardado, se regresa 0.
        let settings = UserDefaults.standard
        for i in 0..<fields.count {
            fields[i].text = "\(settings.integer(forKey: (names[i])))"
        }
    }

    // Cuando se presiona el botón "Editar".
    @IBAction func tapEditar(_ sender: Any) {
        
        // Habilitar/deshabilitar los campos de texto.
        estaEditando = !estaEditando
        
        if estaEditando {
            btnEditar.setTitle("Guardar", for: .normal)
        } else {
            btnEditar.setTitle("Modificar porciones", for: .normal)

            // Ocultar el teclado.
            view.endEditing(true)
            
            // Se tocó "Guardar".
            // Guardar los valores.
            let settings = UserDefaults.standard
            for i in 0..<fields.count {
                
                // Validar que se ingresen números válidos.
                // Regresar un valor a 0 si no es válido.
                var val = (fields[i].text! as NSString).integerValue
                if val <= 0 {
                    fields[i].text = "0"
                    val = 0
                }
                
                // Guardar el valor.
                settings.set(val, forKey: names[i])
            }
            
        }
        
        for i in 0..<fields.count {
            fields[i].isEnabled = estaEditando
        }
        
    }
    
    @IBAction func hideKeyboardOnTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

