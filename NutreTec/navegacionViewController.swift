//
//  navegacionViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 27/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class navegacionViewController: UIViewController {

    
    @IBOutlet weak var bttnPerfil: UIButton!
    @IBOutlet weak var bttnPlan: UIButton!
    @IBOutlet weak var bttnRecetarios: UIButton!
    @IBOutlet weak var bttnSemaforo: UIButton!
    @IBOutlet weak var bttnCreditos: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bttnPlan.layer.cornerRadius = 10
        bttnPerfil.layer.cornerRadius = 10
        bttnCreditos.layer.cornerRadius = 10
        bttnSemaforo.layer.cornerRadius = 10
        bttnRecetarios.layer.cornerRadius = 10

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
