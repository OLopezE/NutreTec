//
//  creditosViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 27/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class creditosViewController: UIViewController {

    @IBOutlet weak var bttnOscar: UIButton!
    @IBOutlet weak var btnMariano: UIButton!
    @IBOutlet weak var btJesus: UIButton!
    @IBOutlet weak var lblCreditos: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        
        lblCreditos.text = "NutreTec ha sido desarrollado por estudiantes del Tecnológico de Monterrey durante el semestre Febrero Junio de 2020, como parte del curso Desarrollo de Aplicaciones para Dispositivos Móviles y asesorados por la maestra Yolanda Martínez Treviño.\n Icono: proteina (“Icon made by iconixar from www.flaticon.com”) \nIcono: mango (“Icon made by Icongeek26 from www.flaticon.com”)\nIcono: brocoli (“Icon made by Icongeek26 from www.flaticon.com”)\nIcono: agua (“Icon made by photo3idea_studio from www.flaticon.com”)\nIcono: caramelo (“Icon made by Freepik from www.flaticon.com”)\nIcono: leche (“Icon made by Freepik from www.flaticon.com”)\nIcono: grasa/peanut butter (“Icon made by Nhor Phai from www.flaticon.com”)\nIcono: cereal (“Icon made by Freepik from www.flaticon.com”)\nIcono: chicharos (“Icon made by Freepik from www.flaticon.com”)\n https://www.deviantart.com/blueamnesiac\n NutreTec se distribuye como está de manera gratuita y se prohíbe su distribución y uso con fines de lucro.\n"
  
        
        bttnOscar.layer.cornerRadius = 10
        btnMariano.layer.cornerRadius = 10
        btJesus.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! creditosExplicadoViewController
        if segue.identifier == "oscar"{
            vista.nombre = "Oscar Francisco López Escobar"
            vista.info = "Correo: oscarfco1998@gmail.com"
            vista.aprendi = "Dale clic 10 veces al logo de NutreTec en la pantalla de mi día"
            vista.imagen = UIImage(named: "COOLSODA2")
            vista.colorPrincipal = UIColor(red: 160/255, green: 123/255, blue: 195/255, alpha: 1)
            vista.colorSecundario = UIColor(red: 174/255, green: 215/255, blue: 108/255, alpha: 1)
            vista.colorTexto = UIColor.white
            
        } else if segue.identifier == "jesus" {
            vista.nombre = "Jesus Javier Lozano Martinez"
            vista.info = "Correo: jesuslozanomar109@gmail.com"
            vista.aprendi = "We've always defined ourself by the ability to overcome the impossible."
            vista.imagen = UIImage(named: "astronaut-guy")
            vista.colorPrincipal = UIColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 1)
            vista.colorSecundario = UIColor(red: 225/255, green: 225/255, blue: 225/255, alpha: 1)
            vista.colorTexto = UIColor.white
            
        } else if segue.identifier == "mariano" {
            vista.nombre = "Mariano García Alipi"
            vista.info = "Correo:\nmarianoalipi@gmail.com\n\nGitHub:\ngithub.com/MarianoAlipi"
            vista.aprendi = "El flujo del tiempo siempre es cruel."
            vista.imagen = UIImage(named: "harp")
            vista.colorPrincipal = UIColor(red: 80/255, green: 108/255, blue: 186/255, alpha: 1)
            vista.colorSecundario = UIColor(red: 120/255, green: 147/255, blue: 222/255, alpha: 1)
            vista.colorTexto = UIColor.white
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
