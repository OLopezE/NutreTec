//
//  creditosExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 27/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class creditosExplicadoViewController: UIViewController {
    @IBOutlet weak var vwTitle: UIView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var vwBody: UIView!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblAprendi: UILabel!
    @IBOutlet weak var imgImagen: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var vwFondo: UIView!
    
    var colorPrincipal : UIColor!
    var colorSecundario : UIColor!
    var nombre = ""
    var info = ""
    var aprendi = ""
    var imagen : UIImage!
    var colorTexto : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        lblNombre.text = nombre
        lblInfo.text = info
        lblAprendi.text = aprendi
        imgImagen.image = imagen
        vwTitle.backgroundColor = colorPrincipal
        vwBody.backgroundColor = colorPrincipal
        view.backgroundColor = colorSecundario
        lblAprendi.textColor = colorTexto
        lblInfo.textColor = colorTexto
        lblNombre.textColor = colorTexto
        lblTitle.textColor = colorTexto
        vwFondo.backgroundColor = colorSecundario
        vwBody.layer.cornerRadius = 10
        vwTitle.layer.cornerRadius = 10

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
