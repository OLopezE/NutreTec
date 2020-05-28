//
//  SemaforoViewController.swift
//  NutreTec
//
//  Created by samantha lozano martinez on 4/22/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class SemaforoViewController: UIViewController {

    
    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var ViewSemaforo: UIView!
    @IBOutlet weak var vwEstructura: UIView!
    @IBOutlet weak var vwsep1: UIView!
    @IBOutlet weak var vwsep2: UIView!
    @IBOutlet weak var vwsep3: UIView!
    
    @IBOutlet weak var btRojo: UIButton!

    var RojoCentro : CGPoint!
    var rojoSale : CGPoint!
    
    @IBOutlet weak var btAmarillo: UIButton!

    var AmarilloCentro : CGPoint!
    var AmarilloSale : CGPoint!
    @IBOutlet weak var btVerde: UIButton!

    @IBOutlet weak var lbEs: UILabel!
    @IBOutlet weak var lbAzucar: UILabel!
    @IBOutlet weak var lbGrasa: UILabel!
    @IBOutlet weak var lbGrasaS: UILabel!
    @IBOutlet weak var lbSal: UILabel!

    
    
    var VerdeCentro : CGPoint!
    var verdeSale : CGPoint!
    
    var tmp = true
    var colorRojo : UIColor!
    var colorVerde : UIColor!
    var colorAmarillo : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btVerde.layer.cornerRadius = 75
        btRojo.layer.cornerRadius = 75
        btAmarillo.layer.cornerRadius = 75
        viewTitle.layer.cornerRadius = 10
        ViewSemaforo.layer.cornerRadius = 10
        vwEstructura.layer.cornerRadius = 10
        colorRojo = btRojo.backgroundColor
        colorVerde = btVerde.backgroundColor
        colorAmarillo = btAmarillo.backgroundColor
        normal()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func normal(){
        btRojo.backgroundColor = colorRojo
        btAmarillo.backgroundColor = colorAmarillo
        btVerde.backgroundColor = colorVerde
        vwsep1.backgroundColor = UIColor.white
        vwsep2.backgroundColor = UIColor.white
        vwsep3.backgroundColor = UIColor.white
        lbEs.isHidden = true
        lbAzucar.isHidden = true
        lbGrasa.isHidden = true
        lbGrasaS.isHidden = true
        lbSal.isHidden = true
        view.backgroundColor = UIColor.white
        
    }
    
    func muestra (){
        self.lbEs.isHidden = false
        self.lbAzucar.isHidden = false
        self.lbGrasa.isHidden = false
        self.lbGrasaS.isHidden = false
        self.lbSal.isHidden = false
    }
    
    @IBAction func clickRojo(_ sender: Any) {
        print("rojo")
       if tmp{
            
                let color1 = UIColor(red: 255/255, green: 93/255, blue: 89/255, alpha: 1)
                view.backgroundColor = colorRojo
                btRojo.backgroundColor = color1
                vwsep1.backgroundColor = colorRojo
                vwsep2.backgroundColor = colorRojo
                vwsep3.backgroundColor = colorRojo
                ///labels
                lbEs.text = "ALTO"
                lbAzucar.text = "Azúcares\nmayor a 15g"
                lbGrasa.text = "Grasa \nmayor a 20g"
                lbGrasaS.text = "Grasas saturadas \nmayor a 5g"
                lbSal.text = "Sal\n mayor a 1.5g"
                muestra()
                tmp = false
            } else{
            
                btVerde.isHidden = false
                btAmarillo.isHidden = false
                view.backgroundColor = UIColor.white
                ///labels
                normal()
                tmp = true
                
        }
    }

    
    @IBAction func clickAmarillo(_ sender: Any) {
        if tmp{
            
                view.backgroundColor = colorAmarillo
                btAmarillo.backgroundColor = UIColor(red: 251/255, green: 215/255, blue: 53/255, alpha: 1)
                vwsep1.backgroundColor = colorAmarillo
                vwsep2.backgroundColor = colorAmarillo
                vwsep3.backgroundColor = colorAmarillo
                ///labels
                lbEs.text = "REGULAR"
                lbAzucar.text = "Azúcares\n5g - 15g"
                lbGrasa.text = "Grasa\n3g - 20g"
                lbGrasaS.text = "Grasas saturadas\n1.5g - 5g"
                lbSal.text = "Sal\n0.3g - 1.5g"
                ///labels
                muestra()
                tmp = false
            } else{
            
                btVerde.isHidden = false
                btRojo.isHidden = false
                view.backgroundColor = UIColor.white
                ///labels
                normal()
                tmp = true
            
        }
    }
    
    
    @IBAction func clickVerde(_ sender: Any) {
        
        if tmp{
                view.backgroundColor = colorVerde
                btVerde.backgroundColor = UIColor(red: 0, green: 184/255, blue: 15/255, alpha: 1)
                vwsep1.backgroundColor = colorVerde
                vwsep2.backgroundColor = colorVerde
                vwsep3.backgroundColor = colorVerde
                ///labels
                lbEs.text = "BAJO"
                lbAzucar.text = "Azucar\n5g o menos"
                lbGrasa.text = "Grasa\n3g o menos"
                lbGrasaS.text = "Grasas saturadas\n1.5g o menos"
                lbSal.text = "Sal\n0.3g o menos"
                ///labels
                muestra()
                tmp = false
            } else{
                btAmarillo.isHidden = false
                btRojo.isHidden = false
                view.backgroundColor = UIColor.white
                ///labels
                normal()
                tmp = true
            
        }
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
