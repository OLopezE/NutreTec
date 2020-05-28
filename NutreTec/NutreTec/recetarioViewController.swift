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
    @IBOutlet weak var bttnOtros: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bttnAntojos.layer.cornerRadius = 10
        bttnDesayunos.layer.cornerRadius = 10
        bttnEnsaladas.layer.cornerRadius = 10
        bttnSmoothies.layer.cornerRadius = 10
        bttnVegetarianos.layer.cornerRadius = 10
        bttnOtros.layer.cornerRadius = 10
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
        abreLink(pag: "https://pdfhost.io/v/MXrUTsn5Y_Desayunos_comidas_y_cenaspdf.pdf")
        
    }
    
    @IBAction func ensaladas(_ sender: UIButton) {
        abreLink(pag: "https://pdfhost.io/v/DGoLpm5Tr_Recetario_Ensaladas_pdf.pdf")
    }
    
    @IBAction func antojos(_ sender: UIButton) {
        abreLink(pag: "https://pdfhost.io/v/850gTlkxM_Recetario_de_antojospdf.pdf")
    }
    @IBAction func smoothies(_ sender: UIButton) {
        abreLink(pag: "https://pdfhost.io/v/cgjcHoi3u_Recetario_Smoothiespdf.pdf")
    }
    
    @IBAction func Vegetariano(_ sender: UIButton) {
        abreLink(pag: "https://pdfhost.io/v/KKcnBQRkq_RECETARIO_VEGETARIANO_1pdf.pdf")
    }
    
    @IBAction func otros(_ sender: UIButton) {
         abreLink(pag: "https://drive.google.com/drive/folders/1PjeubSQ9A75ty9nc7EKjgCNWBH_2m0yI?usp=sharing")
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
