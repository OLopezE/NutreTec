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
    @IBOutlet weak var salirRojo: UIButton!
    @IBOutlet weak var entraRojo: UIButton!
    @IBOutlet weak var btrojoSal: UIButton!
    @IBOutlet weak var btrojoGrasasS: UIButton!
    @IBOutlet weak var btrojoGrasas: UIButton!
    @IBOutlet weak var btrojoAzucar: UIButton!
    @IBOutlet weak var lbAlto: UILabel!
    @IBOutlet weak var lbRojoNum: UILabel!
    @IBOutlet weak var lbRojoMayor: UILabel!
    @IBOutlet weak var lbRojo: UILabel!
    @IBOutlet weak var lbSaturadaR: UILabel!
    var RojoCentro : CGPoint!
    var rojoSale : CGPoint!
    var rojoAzucar : Bool = false
    var rojoGrasa : Bool = false
    var rojoGrasaS : Bool = false
    var rojoSal : Bool = false
    var contRojo = 0
    
    @IBOutlet weak var moverAmarillo: UIButton!
    @IBOutlet weak var btAmarillo: UIButton!
    @IBOutlet weak var salirAmarillo: UIButton!
    @IBOutlet weak var entraAmarillo: UIButton!
    @IBOutlet weak var lbRegular: UILabel!
    @IBOutlet weak var lbSalAmarillo: UILabel!
    @IBOutlet weak var lbGrasasAmarillo: UILabel!
    @IBOutlet weak var lbGrasasSAmarillo: UILabel!
    @IBOutlet weak var lbAzucarAmarillo: UILabel!
    var AmarilloCentro : CGPoint!
    var AmarilloSale : CGPoint!
    var amarilloAzucar : Bool = false
    var amarilloGrasa : Bool = false
    var amarilloGrasaS : Bool = false
    var amarilloSal : Bool = false

    @IBOutlet weak var moverVerde: UIButton!
    @IBOutlet weak var btVerde: UIButton!
    @IBOutlet weak var salirVerde: UIButton!
    @IBOutlet weak var entraVerde: UIButton!
    @IBOutlet weak var lbBajo: UILabel!
    @IBOutlet weak var lbVerdeMenor: UILabel!
    @IBOutlet weak var lbVerdeNum: UILabel!
    var VerdeCentro : CGPoint!
    var verdeSale : CGPoint!
    var verdeAzucar : Bool = false
    var verdeGrasa : Bool = false
    var verdeGrasaS : Bool = false
    var verdeSal : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RojoCentro = btRojo.center
        rojoSale = entraRojo.center
        AmarilloCentro = btAmarillo.center
        AmarilloSale = entraAmarillo.center
        VerdeCentro = btVerde.center
        verdeSale = entraVerde.center
        lbRojoNum.isHidden = true
        lbRojoMayor.isHidden = true
        lbAzucarAmarillo.isHidden = true
        lbGrasasAmarillo.isHidden = true
        lbGrasasSAmarillo.isHidden = true
        lbSalAmarillo.isHidden = true
        lbVerdeNum.isHidden = true
        lbVerdeMenor.isHidden = true
        lbSaturadaR.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickRojo(_ sender: Any) {
        if btRojo.center == RojoCentro{
            lbAlto.isHidden = true
            entraRojo.alpha = 1
            UIView.animate(withDuration: 0.3, animations:
                { self.btRojo.center = self.moverRojo.center
                    self.entraRojo.center = self.salirRojo.center})
        } else{
                lbAlto.isHidden = false
                lbRojoMayor.isHidden = true
                lbRojoNum.isHidden = true
                UIView.animate(withDuration: 0.3, animations:
                    { self.btRojo.center = self.RojoCentro
                        self.entraRojo.center = self.rojoSale}, completion: {(finished: Bool) in
                            self.entraRojo.alpha = 0}
                            )
            }
    }

    @IBAction func clickInfoRojo(_ sender: Any) {
        
        if contRojo == 0{
            lbRojo.text = "Grasas"
            btrojoAzucar.alpha = 1
            UIView.animate(withDuration: 0.3, animations:
                {self.btrojoAzucar.center = self.RojoCentro}, completion:
                {(finished: Bool) in
                    self.lbRojoMayor.isHidden = false
                    self.lbRojoNum.isHidden = false
            }
            )
        }else if contRojo == 1{
            lbSaturadaR.isHidden = false
            lbRojoMayor.isHidden = true
            lbRojoNum.isHidden = true
            lbRojoNum.text = "20g"
            btrojoGrasas.alpha = 1
            UIView.animate(withDuration: 0.3, animations:
                {self.btrojoGrasas.center = self.RojoCentro
                    self.btrojoAzucar.center = self.btRojo.center
            }, completion:
                {(finished: Bool) in
                    self.lbRojoMayor.isHidden = false
                    self.lbRojoNum.isHidden = false
            }
            )
            
        }else if contRojo == 2{
            lbRojo.text = "Sal"
            lbSaturadaR.isHidden = true
            lbRojoMayor.isHidden = true
            lbRojoNum.isHidden = true
            lbRojoNum.text = "5g"
            btrojoGrasasS.alpha = 1
            UIView.animate(withDuration: 0.3, animations:
                {self.btrojoGrasasS.center = self.RojoCentro
                    self.btrojoGrasas.center = self.btRojo.center
            }, completion:
                {(finished: Bool) in
                    self.lbRojoMayor.isHidden = false
                    self.lbRojoNum.isHidden = false
            }
            )
        }else{
            
            lbRojoMayor.isHidden = true
            lbRojoNum.isHidden = true
            lbRojoNum.text = "1.5g"
            btrojoSal.alpha = 1
            UIView.animate(withDuration: 0.3, animations:
                {self.btrojoSal.center = self.RojoCentro
                    self.btrojoGrasasS.center = self.btRojo.center
            }, completion:
                {(finished: Bool) in
                    self.lbRojoMayor.isHidden = false
                    self.lbRojoNum.isHidden = false
            }
            )
            entraRojo.alpha = 0
        }
        if contRojo < 3{
            contRojo+=1
        }
        
    }
    
    @IBAction func clickAmarillo(_ sender: Any) {
        if btAmarillo.center == AmarilloCentro{
            lbRegular.isHidden = true
            UIView.animate(withDuration: 0.3, animations:{ self.btAmarillo.center = self.moverAmarillo.center
                self.entraAmarillo.alpha = 1
                self.entraAmarillo.center = self.AmarilloCentro
            },completion:
                {(finished: Bool) in
                    self.lbSalAmarillo.isHidden = false
                    self.lbGrasasAmarillo.isHidden = false
                    self.lbGrasasSAmarillo.isHidden = false
                    self.lbAzucarAmarillo.isHidden = false
            })}
        else{
            self.lbSalAmarillo.isHidden = true
            self.lbGrasasAmarillo.isHidden = true
            self.lbGrasasSAmarillo.isHidden = true
            self.lbAzucarAmarillo.isHidden = true
            lbRegular.isHidden = false
            UIView.animate(withDuration: 0.3, animations:{ self.btAmarillo.center = self.AmarilloCentro
                self.entraAmarillo.center = self.AmarilloSale
            },completion:
            {(finished: Bool) in
                self.entraAmarillo.alpha = 0 })
                
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
            })} else{
            UIView.animate(withDuration: 0.3, animations:{ self.btVerde.center = self.VerdeCentro},completion:
            {(finished: Bool) in
                self.lbBajo.isHidden = false
                self.btAmarillo.isHidden = false
                self.lbRegular.isHidden = false
                self.lbAlto.isHidden = false
                self.btRojo.isHidden = false
                self.view.backgroundColor = UIColor.white})
            
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
