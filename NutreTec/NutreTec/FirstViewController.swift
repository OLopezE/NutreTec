//
//  FirstViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 22/04/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var fecha: UILabel!
    var date = Date()
    
    @IBOutlet weak var lblCarne: UILabel!
    @IBOutlet weak var lblVegetales: UILabel!
    @IBOutlet weak var lblAzucar: UILabel!
    @IBOutlet weak var lblLeguminosas: UILabel!
    @IBOutlet weak var lblFrutas: UILabel!
    @IBOutlet weak var lblCereales: UILabel!
    @IBOutlet weak var lblGrasas: UILabel!
    @IBOutlet weak var lblLeche: UILabel!
    @IBOutlet weak var lblAgua: UILabel!
    
    
    override func viewDidLoad() {
        self.title = "Mi día"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        obtenDia()
    }

    @IBAction func diaMas(_ sender: Any) {
        date = date.addingTimeInterval(86400)
        obtenDia()
    }
    
    @IBAction func diaMenos(_ sender: Any) {
        date = date.addingTimeInterval(-86400)
        obtenDia()
    }
    func obtenDia(){
        let dia: DateFormatter = DateFormatter()
        dia.dateFormat = "MMM dd, yyyy"
        fecha.text = dia.string(from: date)
    }
}

