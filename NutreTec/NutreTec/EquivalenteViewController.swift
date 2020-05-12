//
//  EquivalenteViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 11/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class EquivalenteViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var vistaComida: UIView!
    
    @IBOutlet weak var vwAzucar: UIView!
    @IBOutlet weak var vwGrasa: UIView!
    @IBOutlet weak var vwFrutas: UIView!
    @IBOutlet weak var vwLacteos: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwLeguminosas: UIView!
    @IBOutlet weak var vwCarnes: UIView!
    @IBOutlet weak var vwVegetales: UIView!
    
    
    let carnequiv = ["","",""]
    let vegetalequiv = [""]
    let lacteosequiv = [""]
    let frutasequiv = [""]
    let grasasequiv = [""]
    let azucarequiv = [""]
    let leguequiv = [""]
    let cerealequiv = [""]

    
    override func viewDidLoad() {
        scrollView.contentSize = vistaComida.frame.size
        super.viewDidLoad()
        vwAzucar.layer.cornerRadius = 10
        vwGrasa.layer.cornerRadius = 10
        vwFrutas.layer.cornerRadius = 10
        vwLacteos.layer.cornerRadius = 10
        vwCereales.layer.cornerRadius = 10
        vwLeguminosas.layer.cornerRadius = 10
        vwCarnes.layer.cornerRadius = 10
        vwVegetales.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! EquivalenteExplicadoViewController
        if segue.identifier == "v"{
            
            vista.colorTitulo = vwVegetales.backgroundColor
            vista.titulo = "Vegetales"
            vista.colorTabla = vwVegetales.backgroundColor
            vista.desc = "Una racion es igual a 1/2 taza"
            vista.desc2 = "(cantidad libre)"
        }else if segue.identifier == "car"{
            vista.colorTitulo = vwCarnes.backgroundColor
            vista.titulo = "Carnes"
            vista.colorTabla = vwCarnes.backgroundColor
            
        }else if segue.identifier == "cer"{
            vista.colorTitulo = vwCereales.backgroundColor
            vista.titulo = "Cereales"
            vista.colorTabla = vwCereales.backgroundColor
            
        }else if segue.identifier == "az"{
            vista.colorTitulo = vwAzucar.backgroundColor
            vista.titulo = "Azucar"
            vista.colorTabla = vwAzucar.backgroundColor
            
        }else if segue.identifier == "gr"{
            vista.colorTitulo = vwGrasa.backgroundColor
            vista.titulo = "Grasas"
            vista.colorTabla = vwGrasa.backgroundColor
            
        }else if segue.identifier == "f"{
            vista.colorTitulo = vwFrutas.backgroundColor
            vista.titulo = "Frutas"
            vista.colorTabla = vwFrutas.backgroundColor
            
        }else if segue.identifier == "leg"{
            vista.colorTitulo = vwLeguminosas.backgroundColor
            vista.titulo = "Leguminosas"
            vista.colorTabla = vwLeguminosas.backgroundColor
            vista.desc = "Una racion es igual a 1/2 taza"
            
        }else if segue.identifier == "lac"{
            vista.colorTitulo = vwLacteos.backgroundColor
            vista.titulo = "Lacteos"
            vista.colorTabla = vwLacteos.backgroundColor
            vista.desc = "Una racion es igual a 1/2 taza"
            vista.desc2 = "(125ml) de:"
            
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
