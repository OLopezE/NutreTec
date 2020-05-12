//
//  EquivalenteExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 11/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class EquivalenteExplicadoViewController: UIViewController{
    
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var vwTitulo: UIView!
    @IBOutlet weak var vwTabla: UIView!
    @IBOutlet weak var lblRacion: UILabel!
    
    var titulo = "Título"
    var colorTitulo :UIColor!
    var colorTabla : UIColor!
    var racion = "Una ración es igual a:"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vwTabla.layer.cornerRadius = 10
        vwTitulo.layer.cornerRadius = 10
        lblTitulo.text = titulo
        lblRacion.text = racion
        vwTitulo.backgroundColor = colorTitulo
        vwTabla.backgroundColor = colorTitulo
        // Do any additional setup after loading the view.
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
