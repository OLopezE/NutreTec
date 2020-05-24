//
//  SemaforoViewController.swift
//  NutreTec
//
//  Created by samantha lozano martinez on 4/22/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class SemaforoViewController: UIViewController {
    
    @IBOutlet weak var moverRojo: UIButton!
    @IBOutlet weak var btRojo: UIButton!
    @IBOutlet weak var lbAlto: UILabel!
    var RojoCentro : CGPoint!
    var rojoSale : CGPoint!
    
    @IBOutlet weak var moverAmarillo: UIButton!
    @IBOutlet weak var btAmarillo: UIButton!

    @IBOutlet weak var lbRegular: UILabel!
    var AmarilloCentro : CGPoint!
    var AmarilloSale : CGPoint!

    @IBOutlet weak var moverVerde: UIButton!
    @IBOutlet weak var btVerde: UIButton!
    @IBOutlet weak var lbBajo: UILabel!
    
    @IBOutlet weak var lbEs: UILabel!
    
    @IBOutlet weak var lbAzucar: UILabel!
    @IBOutlet weak var lbAzucar1: UILabel!
    @IBOutlet weak var lbAzucar2: UILabel!
    @IBOutlet weak var lbGrasa: UILabel!
    @IBOutlet weak var lbGrasa1: UILabel!
    @IBOutlet weak var lbGrasa2: UILabel!
    @IBOutlet weak var lbGrasaS: UILabel!
    @IBOutlet weak var lbGrasaS0: UILabel!
    @IBOutlet weak var lbGrasaS1: UILabel!
    @IBOutlet weak var lbGrasaS2: UILabel!
    @IBOutlet weak var lbSal: UILabel!
    @IBOutlet weak var lbSal1: UILabel!
    @IBOutlet weak var lbSal2: UILabel!
    @IBOutlet weak var lbporcada: UILabel!
    
    
    var VerdeCentro : CGPoint!
    var verdeSale : CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RojoCentro = btRojo.center
        AmarilloCentro = btAmarillo.center
        VerdeCentro = btVerde.center
        lbEs.isHidden = true
        lbAzucar.isHidden = true
        lbAzucar1.isHidden = true
        lbGrasa.isHidden = true
        lbGrasa1.isHidden = true
        lbGrasaS.isHidden = true
        lbGrasaS0.isHidden = true
        lbGrasaS1.isHidden = true
        lbSal.isHidden = true
        lbSal1.isHidden = true
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickRojo(_ sender: Any) {
       if btRojo.center == RojoCentro{
            lbAlto.isHidden = true
            UIView.animate(withDuration: 0.3, animations:{ self.btRojo.center = self.moverRojo.center},completion:
            {(finished: Bool) in
                let color1 = UIColor(red: 0.8, green: 0, blue: 0.2, alpha: 1)
                self.view.backgroundColor = color1
                self.btVerde.isHidden = true
                self.lbBajo.isHidden = true
                self.lbRegular.isHidden = true
                self.btAmarillo.isHidden = true
                ///labels
                self.lbEs.text = "ALTO"
                self.lbAzucar1.text = "  Mayor a 15g"
                self.lbGrasa1.text = "  Mayor a 20g"
                self.lbGrasaS1.text = "  Mayor a 5g"
                self.lbSal1.text = "  Mayor a 1.5g"
                ///labels
                self.lbEs.isHidden = false
                self.lbAzucar.isHidden = false
                self.lbAzucar1.isHidden = false
                self.lbGrasa.isHidden = false
                self.lbGrasa1.isHidden = false
                self.lbGrasaS.isHidden = false
                self.lbGrasaS0.isHidden = false
                self.lbGrasaS1.isHidden = false
                self.lbSal.isHidden = false
                self.lbSal1.isHidden = false
            })} else{
            UIView.animate(withDuration: 0.3, animations:{ self.btRojo.center = self.RojoCentro},completion:
            {(finished: Bool) in
                self.lbAlto.isHidden = false
                self.btVerde.isHidden = false
                self.lbBajo.isHidden = false
                self.lbRegular.isHidden = false
                self.btAmarillo.isHidden = false
                self.view.backgroundColor = UIColor.white})
                ///labels
                self.lbEs.isHidden = true
                self.lbAzucar.isHidden = true
                self.lbAzucar1.isHidden = true
                self.lbGrasa.isHidden = true
                self.lbGrasa1.isHidden = true
                self.lbGrasaS.isHidden = true
                self.lbGrasaS0.isHidden = true
                self.lbGrasaS1.isHidden = true
                self.lbSal.isHidden = true
                self.lbSal1.isHidden = true            
        }
    }

    
    @IBAction func clickAmarillo(_ sender: Any) {
        if btAmarillo.center == AmarilloCentro{
            lbRegular.isHidden = true
            UIView.animate(withDuration: 0.3, animations:{ self.btAmarillo.center = self.moverAmarillo.center},completion:
            {(finished: Bool) in
                self.view.backgroundColor = UIColor.yellow
                self.btVerde.isHidden = true
                self.lbBajo.isHidden = true
                self.lbAlto.isHidden = true
                self.btRojo.isHidden = true
                ///labels
                self.lbEs.text = "REGULAR"
                self.lbAzucar1.text = "  5g - 15g"
                self.lbGrasa1.text = "  3g - 20g"
                self.lbGrasaS1.text = "  1.5g - 5g"
                self.lbSal1.text = "  0.3g - 1.5g"
                ///labels
                self.lbEs.isHidden = false
                self.lbAzucar.isHidden = false
                self.lbAzucar1.isHidden = false
                self.lbGrasa.isHidden = false
                self.lbGrasa1.isHidden = false
                self.lbGrasaS.isHidden = false
                self.lbGrasaS0.isHidden = false
                self.lbGrasaS1.isHidden = false
                self.lbSal.isHidden = false
                self.lbSal1.isHidden = false
            })} else{
            UIView.animate(withDuration: 0.3, animations:{ self.btAmarillo.center = self.AmarilloCentro},completion:
            {(finished: Bool) in
                self.lbRegular.isHidden = false
                self.btVerde.isHidden = false
                self.lbBajo.isHidden = false
                self.lbAlto.isHidden = false
                self.btRojo.isHidden = false
                self.view.backgroundColor = UIColor.white})
                ///labels
                self.lbEs.isHidden = true
                self.lbAzucar.isHidden = true
                self.lbAzucar1.isHidden = true
                self.lbGrasa.isHidden = true
                self.lbGrasa1.isHidden = true
                self.lbGrasaS.isHidden = true
                self.lbGrasaS0.isHidden = true
                self.lbGrasaS1.isHidden = true
                self.lbSal.isHidden = true
                self.lbSal1.isHidden = true
            
        }
    }
    
    
    @IBAction func clickVerde(_ sender: Any) {
        
        if btVerde.center == VerdeCentro{
            lbBajo.isHidden = true
            UIView.animate(withDuration: 0.3, animations:{ self.btVerde.center = self.moverVerde.center},completion:
            {(finished: Bool) in
                self.view.backgroundColor = UIColor.green
                self.btAmarillo.isHidden = true
                self.lbRegular.isHidden = true
                self.lbAlto.isHidden = true
                self.btRojo.isHidden = true
                ///labels
                self.lbEs.text = "BAJO"
                self.lbAzucar1.text = "  5g o menos"
                self.lbGrasa1.text = "  3g o menos"
                self.lbGrasaS1.text = "  1.5g o menos"
                self.lbSal1.text = "  0.3g o menos"
                ///labels
                self.lbEs.isHidden = false
                self.lbAzucar.isHidden = false
                self.lbAzucar1.isHidden = false
                self.lbGrasa.isHidden = false
                self.lbGrasa1.isHidden = false
                self.lbGrasaS.isHidden = false
                self.lbGrasaS0.isHidden = false
                self.lbGrasaS1.isHidden = false
                self.lbSal.isHidden = false
                self.lbSal1.isHidden = false
            })} else{
            UIView.animate(withDuration: 0.3, animations:{ self.btVerde.center = self.VerdeCentro},completion:
            {(finished: Bool) in
                self.lbBajo.isHidden = false
                self.btAmarillo.isHidden = false
                self.lbRegular.isHidden = false
                self.lbAlto.isHidden = false
                self.btRojo.isHidden = false
                self.view.backgroundColor = UIColor.white})
                ///labels
                self.lbEs.isHidden = true
                self.lbAzucar.isHidden = true
                self.lbAzucar1.isHidden = true
                self.lbGrasa.isHidden = true
                self.lbGrasa1.isHidden = true
                self.lbGrasaS.isHidden = true
                self.lbGrasaS0.isHidden = true
                self.lbGrasaS1.isHidden = true
                self.lbSal.isHidden = true
                self.lbSal1.isHidden = true
            
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
