//
//  historialViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 14/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class historialViewController: UIViewController {

    
    @IBOutlet weak var vwPeso: UIView!
    @IBOutlet weak var vwMasa: UIView!
    @IBOutlet weak var vwGrasa: UIView!
    
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfMasa: UITextField!
    @IBOutlet weak var tfGrasa: UITextField!
    
    var date = Date()
    var peso : Float!
    var masa : Float!
    var grasa : Float!
    
    
    override func viewDidLoad() {
        vwPeso.layer.cornerRadius = 10
        vwMasa.layer.cornerRadius = 10
        vwGrasa.layer.cornerRadius = 10
        super.viewDidLoad()
        obtenDia()
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! historialExplicadoViewController
        if segue.identifier == "peso"{
            vista.titulo = "Peso"
        }else if segue.identifier == "masa"{
            vista.titulo = "Masa muscular"
        }else{
            vista.titulo = "Porcentaje de Grasa"
            vista.tamano = 30
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    func obtenDia(){
        let dia: DateFormatter = DateFormatter()
        dia.dateFormat = "MMM dd, yyyy"
        lblFecha.text = dia.string(from: date)
    }
    
    @IBAction func guardar(_ sender: UIButton) {
        
    }
    
    
}
