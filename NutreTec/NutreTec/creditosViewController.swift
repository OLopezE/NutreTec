//
//  creditosViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 27/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class creditosViewController: UIViewController {

    @IBOutlet weak var bttnOscar: UIButton!
    override func viewDidLoad() {
        bttnOscar.layer.cornerRadius = 10
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! creditosExplicadoViewController
        if segue.identifier == "oscar"{
            vista.nombre = "Oscar Francisco López Escobar"
            vista.info = "Correo: oscarfco1998@gmail.com"
            vista.aprendi = "Aquellos que no entienden el verdadero dolor no pueden entender la verdadera paz"
            vista.imagen = UIImage(named: "logoakatsuki")
            vista.colorPrincipal = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
            vista.colorSecundario = UIColor(red: 30/255, green: 30/255, blue: 30/255, alpha: 1)
            vista.colorTexto = UIColor.white
            
        }else if segue.identifier == "jesus"{
            
        }else if segue.identifier == "mariano"{
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
