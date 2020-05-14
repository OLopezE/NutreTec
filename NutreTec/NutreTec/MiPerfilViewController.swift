//
//  MiPerfilViewController.swift
//  NutreTec
//
//  Created by Alejandro López on 14/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class MiPerfilViewController: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfSexo: UISegmentedControl!
    @IBOutlet weak var tfFechaNacimiento: UIDatePicker!
    @IBOutlet weak var btnEditarGuardar: UIButton!
    
    var estaEditando = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tfNombre.isUserInteractionEnabled = false
        self.tfSexo.isUserInteractionEnabled = false
        self.tfFechaNacimiento.isUserInteractionEnabled = false
        
    }
    
    @IBAction func tapEditarGuardar(_ sender: Any) {
        
        self.estaEditando = !self.estaEditando

        self.btnEditarGuardar.setTitle(self.estaEditando ? "Guardar" : "Editar", for: .normal)
        
        self.tfNombre.isUserInteractionEnabled = self.estaEditando
        self.tfSexo.isUserInteractionEnabled = self.estaEditando
        self.tfFechaNacimiento.isUserInteractionEnabled = self.estaEditando
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
