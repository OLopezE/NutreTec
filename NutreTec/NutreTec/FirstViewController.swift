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
    var misDias = [dias]()
    
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
        buscaDia()
        
    }
    
    func buscaDia(){
        for n in misDias {
            if n.dia == fecha.text!{
                lblLeche.text = String(n.leche)
                lblAgua.text = String(n.leche)
                lblFrutas.text = String(n.leche)
                lblGrasas.text = String(n.leche)
                lblCereales.text = String(n.leche)
                lblAzucar.text = String(n.leche)
                lblCarne.text = String(n.leche)
                lblVegetales.text = String(n.leche)
                lblLeguminosas.text = String(n.leche)
            }else{
                var esteDia = dias(carne: 0, vegetal: 0, leche: 0, grasa: 0, fruta: 0, agua: 0, leguminosa: 0, azucar: 0, cereales: 0, dia: fecha.text!)
                misDias.append(esteDia)
                
                
            }
        }
    }

    func uno(n : Int){
        if fca == 1 {
            if n == -1 && Int(lblCarne.text!)! == 0  {
                
            }else{
                lblCarne.text = String(n +  Int(lblCarne.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.carne += n
                    }
                }
            }
            
        }
        if fv == 1 {
            if n == -1 && Int(lblVegetales.text!)! == 0  {
                
            }else{
                lblVegetales.text = String(n +  Int(lblVegetales.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.vegetal += n
                    }
                }
                
            }
            
        }
        if flegu == 1 {
            if n == -1 && Int(lblLeguminosas.text!)! == 0  {
                
            }else{
                lblLeguminosas.text = String(n +  Int(lblLeguminosas.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.leguminosa += n
                    }
                }
                
            }
        }
        if faz == 1 {
            if n == -1 && Int(lblAzucar.text!)! == 0  {
                
            }else{
                lblAzucar.text = String(n +  Int(lblAzucar.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.azucar += n
                    }
                }
            }
        }
        if fce == 1 {
            if n == -1 && Int(lblCereales.text!)! == 0  {
                
            }else{
                lblCereales.text = String(n +  Int(lblCereales.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.cereales += n
                    }
                }
                
            }
        }
        if fg == 1 {
            if n == -1 && Int(lblGrasas.text!)! == 0  {
                
            }else{
                lblGrasas.text = String(n +  Int(lblGrasas.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.grasa += n
                    }
                }
                
            }
        }
        if ff == 1 {
            if n == -1 && Int(lblFrutas.text!)! == 0  {
                
            }else{
                lblFrutas.text = String(n +  Int(lblFrutas.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.fruta += n
                    }
                }
                
            }
        }
        if fag == 1 {
            if n == -1 && Int(lblAgua.text!)! == 0  {
                
            }else{
                lblAgua.text = String(n +  Int(lblAgua.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.agua += n
                    }
                }
                
            }
                
        }
        if fleche == 1 {
            if n == -1 && Int(lblLeche.text!)! == 0  {
                
            }else{
                lblLeche.text = String(n +  Int(lblLeche.text!)!)
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.leche += n
                    }
                }
                
            }

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
        buscaDia()
    }
    
    @IBAction func diaMenos(_ sender: Any) {
        date = date.addingTimeInterval(-86400)
        obtenDia()
        buscaDia()
    }
    func obtenDia(){
        let dia: DateFormatter = DateFormatter()
        dia.dateFormat = "MMM dd, yyyy"
        fecha.text = dia.string(from: date)
    }
}

