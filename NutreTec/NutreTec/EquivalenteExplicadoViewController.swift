//
//  EquivalenteExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 11/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class EquivalenteExplicadoViewController: UIViewController  {
    
    
    @IBOutlet weak var lbldesc2: UILabel!
    @IBOutlet weak var lbldesc1: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var vwTitulo: UIView!
    @IBOutlet weak var vwTabla: UIView!
    
    var titulo = "Título"
    var desc = "Una ración es igual a:"
    var desc2 = ""
    var colorTitulo : UIColor!
    var colorTabla : UIColor!
    var colorLetra = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbldesc1.text = desc
        lbldesc2.text = desc2
        lblTitulo.text = titulo
        lbldesc1.textColor = colorLetra
        lbldesc2.textColor = colorLetra
        lblTitulo.textColor = colorLetra
        vwTabla.layer.cornerRadius = 10
        vwTitulo.layer.cornerRadius = 10
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
