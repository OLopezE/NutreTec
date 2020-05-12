//
//  FirstViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 22/04/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    //vistas
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var vistaAlimentos: UIView!
    
    
    
    @IBOutlet weak var fecha: UILabel!
    var misDias = [dias]()
    
    var date = Date()
    
    @IBOutlet weak var vwLeguminosas: UIView!
    @IBOutlet weak var vwLacteos: UIView!
    @IBOutlet weak var vwCarne: UIView!
    @IBOutlet weak var vwVegetales: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwGrasas: UIView!
    @IBOutlet weak var vwAzucar: UIView!
    @IBOutlet weak var vwAgua: UIView!
    @IBOutlet weak var vwFrutas: UIView!
    
    
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
        scrollView.contentSize = vistaAlimentos.frame.size
        super.viewDidLoad()
        vwAzucar.layer.cornerRadius = 10
        vwFrutas.layer.cornerRadius = 10
        vwLeguminosas.layer.cornerRadius = 10
        vwLacteos.layer.cornerRadius = 10
        vwAgua.layer.cornerRadius = 10
        vwCereales.layer.cornerRadius = 10
        vwCarne.layer.cornerRadius = 10
        vwVegetales.layer.cornerRadius = 10
        vwGrasas.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
        obtenDia()
        buscaDia()
        
    }
    
    
    func desAsigna(){
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
        btCarne.setImage(carne, for: .normal)
        btVegetales.setImage(vegetales, for: .normal)
        btLeguminosas.setImage(leguminosas, for: .normal)
        btAzucar.setImage(azucar, for: .normal)
        btCereal.setImage(cereal, for: .normal)
        btFrutas.setImage(frutas, for: .normal)
        btGrasa.setImage(grasa, for: .normal)
        btLacteos.setImage(lacteos, for: .normal)
        btAgua.setImage(agua, for: .normal)
        vwAzucar.backgroundColor = UIColor.white
        vwFrutas.backgroundColor = UIColor.white
        vwLeguminosas.backgroundColor  = UIColor.white
        vwLacteos.backgroundColor = UIColor.white
        vwAgua.backgroundColor = UIColor.white
        vwCereales.backgroundColor = UIColor.white
        vwCarne.backgroundColor = UIColor.white
        vwVegetales.backgroundColor = UIColor.white
        vwGrasas.backgroundColor = UIColor.white
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

    func uno(n : Int) {
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
    
    
    @IBOutlet weak var btCarne: UIButton!
    @IBOutlet weak var btVegetales: UIButton!
    @IBOutlet weak var btLeguminosas: UIButton!
    @IBOutlet weak var btAzucar: UIButton!
    @IBOutlet weak var btCereal: UIButton!
    @IBOutlet weak var btFrutas: UIButton!
    @IBOutlet weak var btGrasa: UIButton!
    @IBOutlet weak var btLacteos: UIButton!
    @IBOutlet weak var btAgua: UIButton!
    
    var carne = UIImage(named: "carne.png")
    var vegetales = UIImage(named: "vegetable.png")
    var leguminosas = UIImage(named: "chicharos.png")
    var azucar = UIImage(named: "caramelo.png")
    var cereal = UIImage(named: "cereales.png")
    var frutas = UIImage(named: "fruit.png")
    var grasa = UIImage(named: "grasa.png")
    var lacteos = UIImage(named: "leche.png")
    var agua = UIImage(named: "agua.png")
    
    @IBAction func Carne(_ sender: UIButton) {
        desAsigna()
        let carnedel = UIImage(named: "carne-2.png")
        btCarne.setImage(carnedel, for: .normal)
        fca = 1
        vwCarne.backgroundColor = UIColor(red: 163/255, green: 137/255, blue: 254/255, alpha: 1)
        
        
    }
    
    @IBAction func Vegetales(_ sender: UIButton) {
        desAsigna()
        let vegetaldel = UIImage(named: "vegetable-2.png")
        btVegetales.setImage(vegetaldel, for: .normal)
        fv = 1
        vwVegetales.backgroundColor = UIColor(red: 107/255, green: 250/255, blue: 161/255, alpha: 1)
        
    }
    
    @IBAction func Azucar(_ sender: UIButton) {
        desAsigna()
        let azucardel = UIImage(named: "caramelo-2.png")
        btAzucar.setImage(azucardel, for: .normal)
        faz = 1
        vwAzucar.backgroundColor = UIColor(red: 191/255, green: 191/255, blue: 219/255, alpha: 1)

    }
    
    @IBAction func leguminosas(_ sender: UIButton) {
        desAsigna()
        let del = UIImage(named: "chicharos-2.png")
        btLeguminosas.setImage(del, for: .normal)
        flegu = 1
        vwLeguminosas.backgroundColor = UIColor(red: 158/255, green: 162/255, blue: 247/255, alpha: 1)

    }
    
    @IBAction func cereales(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "cereales-2.png")
        btCereal.setImage(del, for: .normal)
        fce = 1
        vwCereales.backgroundColor = UIColor(red: 238/255, green: 226/255, blue: 124/255, alpha: 1)

    }
    
    @IBAction func fruta(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "fruit-2.png")
        btFrutas.setImage(del, for: .normal)
        ff = 1
        vwFrutas.backgroundColor = UIColor(red: 235/255, green: 112/255, blue: 143/255, alpha: 1)

    }
    
    @IBAction func leche(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "leche-2.png")
        btLacteos.setImage(del, for: .normal)
        fleche = 1
        vwLacteos.backgroundColor = UIColor(red: 162/255, green: 216/255, blue: 251/255, alpha: 1)
    }
    
    @IBAction func grasas(_ sender: UIButton) {
        desAsigna()
        let del = UIImage(named: "grasa-2.png")
        btGrasa.setImage(del, for: .normal)
        fg = 1
        vwGrasas.backgroundColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)

    }
    
    @IBAction func agua(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "agua-2.png")
        btAgua.setImage(del, for: .normal)
        fag = 1
        vwAgua.backgroundColor = UIColor(red: 81/255, green: 134/255, blue: 236/255, alpha: 1)
        
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

