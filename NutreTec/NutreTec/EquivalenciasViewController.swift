//
//  EquivalenciasViewController.swift
//  NutreTec
//
//  Created by samantha lozano martinez on 5/10/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit



class EquivalenciasViewController: UIViewController {
    
    

    @IBOutlet weak var vwVerdura: UIView!
    @IBOutlet weak var vwCarne: UIView!
    @IBOutlet weak var vwLeguminosas: UIView!
    @IBOutlet weak var vwLeche: UIView!
    @IBOutlet weak var vwFruta: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwGrasas: UIView!
    @IBOutlet weak var vwAzucar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vwVerdura.layer.cornerRadius = 10
        vwCarne.layer.cornerRadius = 10
        vwFruta.layer.cornerRadius = 10
        vwLeche.layer.cornerRadius = 10
        vwAzucar.layer.cornerRadius = 10
        vwGrasas.layer.cornerRadius = 10
        vwCereales.layer.cornerRadius = 10
        vwLeguminosas.layer.cornerRadius = 10
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
