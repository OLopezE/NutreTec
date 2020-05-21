//
//  historialExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 18/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class historialExplicadoViewController: UIViewController {

    @IBOutlet weak var lblTitulo: UILabel!
    
    var titulo = ""
    var tamano = 40
    
    override func viewDidLoad() {
        lblTitulo.text = titulo
        lblTitulo.font = lblTitulo.font.withSize(CGFloat(tamano))
        super.viewDidLoad()

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
