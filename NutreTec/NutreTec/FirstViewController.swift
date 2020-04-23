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
    
    var fca = 0
    var fv = 0
    var flegu = 0
    var faz = 0
    var fce = 0
    var fg = 0
    var ff = 0
    var fag = 0
    var fleche = 0
    
    override func viewDidLoad() {
        self.title = "Mi día"
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        obtenDia()
    }

    func uno(n : Int){
        if fca == 1 && Int(lblCarne.text!)! > 0 {
            lblCarne.text = String(n +  Int(lblCarne.text!)!)
        }
        if fv == 1 {
            lblVegetales.text = String(n +  Int(lblVegetales.text!)!)
        }
        if flegu == 1 {
            lblLeguminosas.text = String(n +  Int(lblLeguminosas.text!)!)
        }
        if faz == 1 {
            lblAzucar.text = String(n +  Int(lblAzucar.text!)!)
        }
        if fce == 1 {
            lblCereales.text = String(n +  Int(lblCereales.text!)!)
        }
        if fg == 1 {
            lblGrasas.text = String(n +  Int(lblGrasas.text!)!)
        }
        if ff == 1 {
            lblFrutas.text = String(n +  Int(lblFrutas.text!)!)
        }
        if fag == 1 {
            lblAgua.text = String(n +  Int(lblAgua.text!)!)
        }
        if fleche == 1 {
            lblLeche.text = String(n +  Int(lblLeche.text!)!)
        }
    }
    
    @IBAction func Carne(_ sender: UIButton) {
        fca = 1
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
    }
    
    @IBAction func Vegetales(_ sender: UIButton) {
        fca = 0
        fv = 1
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
    }
    
    @IBAction func Azucar(_ sender: UIButton) {
        fca = 0
        fv = 0
        flegu = 0
        faz = 1
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
    }
    
    @IBAction func leguminosas(_ sender: UIButton) {
        fca = 0
        fv = 0
        flegu = 1
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
    }
    
    @IBAction func cereales(_ sender: Any) {
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 1
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
    }
    
    @IBAction func fruta(_ sender: Any) {
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 1
        fag = 0
        fleche = 0
    }
    
    @IBAction func leche(_ sender: Any) {
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 1
    }
    
    @IBAction func grasas(_ sender: UIButton) {
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 1
        ff = 0
        fag = 0
        fleche = 0
    }
    
    @IBAction func agua(_ sender: Any) {
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 1
        fleche = 0
    }
    
    @IBAction func mas(_ sender: UIButton) {
        uno(n: 1)
    }
    
    @IBAction func menos(_ sender: UIButton) {
        uno(n: -1)
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

