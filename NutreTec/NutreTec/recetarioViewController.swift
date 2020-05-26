//
//  recetarioViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 24/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class recetarioViewController: UIViewController {

    @IBOutlet weak var bttnVegetarianos: UIButton!
    @IBOutlet weak var bttnSmoothies: UIButton!
    @IBOutlet weak var bttnAntojos: UIButton!
    @IBOutlet weak var bttnDesayunos: UIButton!
    @IBOutlet weak var bttnEnsaladas: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bttnAntojos.layer.cornerRadius = 10
        bttnDesayunos.layer.cornerRadius = 10
        bttnEnsaladas.layer.cornerRadius = 10
        bttnSmoothies.layer.cornerRadius = 10
        bttnVegetarianos.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    func abreLink (pag : String){
       if let url = URL(string: pag){
            if UIApplication.shared.canOpenURL(url){
                UIApplication.shared.open(url, options: [:])
                
            }
        }
    }
    
    
    @IBAction func comidas(_ sender: UIButton) {
        abreLink(pag: "https://drive.google.com/drive/u/1/folders/0AGsVJGgvGEd9Uk9PVA")
        
    }
    
    
    @IBAction func ensaladas(_ sender: UIButton) {
        abreLink(pag: "https://drive.google.com/drive/u/1/folders/0AGsVJGgvGEd9Uk9PVA")
    }
    
    @IBAction func antojos(_ sender: UIButton) {
        abreLink(pag: "https://drive.google.com/drive/u/1/folders/0AGsVJGgvGEd9Uk9PVA")
    }
    @IBAction func smoothies(_ sender: UIButton) {
        abreLink(pag: "https://drive.google.com/drive/u/1/folders/0AGsVJGgvGEd9Uk9PVA")
    }
    
    @IBAction func Vegetariano(_ sender: UIButton) {
        abreLink(pag: "https://drive.google.com/drive/u/1/folders/0AGsVJGgvGEd9Uk9PVA")
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
