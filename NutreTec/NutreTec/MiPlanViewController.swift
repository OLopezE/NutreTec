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

    @IBOutlet weak var vwVegetales: UIView!
    @IBOutlet weak var vwLeg: UIView!
    @IBOutlet weak var vwFrutas: UIView!
    @IBOutlet weak var vwCarnes: UIView!
    @IBOutlet weak var vwLacteos: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwAzucar: UIView!
    @IBOutlet weak var vwGrasas: UIView!
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    // Todos los campos de texto y su nombre.
    var fields : [UITextField]!
    var names : [String]!
    
    override func viewDidLoad() {
        print(screenSize.height)
        vwLeg.layer.cornerRadius = 10
        vwAzucar.layer.cornerRadius = 10
        vwCarnes.layer.cornerRadius = 10
        vwFrutas.layer.cornerRadius = 10
        vwGrasas.layer.cornerRadius = 10
        vwLacteos.layer.cornerRadius = 10
        vwCereales.layer.cornerRadius = 10
        vwVegetales.layer.cornerRadius = 10
        
        super.viewDidLoad()
        //listen for keyboard events
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil )
        
        
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        // Do any additional setup after loading the view.
        fields =   [ tfCarnes, tfVegetales, tfLeguminosas,
                          tfAzucares, tfCereales, tfFrutas,
                          tfGrasas, tfLeche
                        ]
        names = [ "carnes", "vegetales", "leguminosas", "azucares", "cereales", "frutas", "grasas", "leche" ]
        
        // Cargar los valores guardados.
        // Si no hay guardado, se regresa 0.
        let settings = UserDefaults.standard
        for i in 0..<fields.count {
            fields[i].text = "\(settings.integer(forKey: (names[i])))"
        }
    }
    deinit{
        NotificationCenter.default.removeObserver(self)
    }

    //teclado

    @objc func keyboardWillChange(notification: Notification){
        guard let keyboardRect = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]as? NSValue)?.cgRectValue else {
            return
        }
        if notification.name == UIResponder.keyboardWillShowNotification || notification.name == UIResponder.keyboardWillChangeFrameNotification {
            
            if screenSize.height < 700{
                view.frame.origin.y = -keyboardRect.height * 15/24
                
            }else {
                view.frame.origin.y = -keyboardRect.height * 1/3

            }
        }else{
            view.frame.origin.y = 0

        }
        
        

        
    }
    
    
    // Cuando se presiona el botón "Editar".
    @IBAction func tapEditar(_ sender: Any) {
        
        // Habilitar/deshabilitar los campos de texto.
        estaEditando = !estaEditando
        
        if estaEditando {
            btnEditar.setTitle("Guardar", for: .normal)
        } else {
            btnEditar.setTitle("Modificar", for: .normal)

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

