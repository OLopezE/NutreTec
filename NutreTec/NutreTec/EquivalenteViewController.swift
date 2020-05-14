//
//  EquivalenteViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 11/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class EquivalenteViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var vistaComida: UIView!
    
    @IBOutlet weak var vwAzucar: UIView!
    @IBOutlet weak var vwGrasa: UIView!
    @IBOutlet weak var vwFrutas: UIView!
    @IBOutlet weak var vwLacteos: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwLeguminosas: UIView!
    @IBOutlet weak var vwCarnes: UIView!
    @IBOutlet weak var vwVegetales: UIView!
    
    
    let carnequiv = ["","",""]
    let vegetalequiv = [""]
    let lacteosequiv = [""]
    let frutasequiv = [""]
    let grasasequiv = [""]
    let azucarequiv = [""]
    let leguequiv = [""]
    let cerealequiv = [""]

    
    override func viewDidLoad() {
        scrollView.contentSize = vistaComida.frame.size
        super.viewDidLoad()
        vwAzucar.layer.cornerRadius = 10
        vwGrasa.layer.cornerRadius = 10
        vwFrutas.layer.cornerRadius = 10
        vwLacteos.layer.cornerRadius = 10
        vwCereales.layer.cornerRadius = 10
        vwLeguminosas.layer.cornerRadius = 10
        vwCarnes.layer.cornerRadius = 10
        vwVegetales.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


          let vista = segue.destination as! EquivalenteExplicadoViewController
           if segue.identifier == "v"{
            vista.raciones = ["Acelga", "Alcachofas","Apio", "Berenjena", "Brócoli", "Cebolla", "Cilantro", "Coliflor", "Betabel", "Chile Poblano", "Jugo de tomate", "Champiñones", "Chayote", "Ejotes", "Espinacas", "Flor de calabaza", "Jitomate", "Lechuga", "Nopales", "Calabacita", "Pimiento", "Jugo de verduras", "Ensalada promedio", "Pepino", "Perejil", "Rábano", "Repollo", "Jícama", "Tomate", "Espárragos", "Cebolla", "Zanahoria", "Germen"]
            vista.cantidad = ["1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza","1/2 taza","1/2 taza"]
               vista.colorTitulo = vwVegetales.backgroundColor
               vista.titulo = "Vegetales"
               vista.colorTabla = vwVegetales.backgroundColor
               vista.desc = "Una racion es igual a:"
               //vista.colorFondo = UIColor(red: 79/255, green: 128/255, blue: 69/255, alpha: 1)
               

           }else if segue.identifier == "car"{
               vista.raciones = ["Pechuga de pollo", "Pechuga de pavo", "Aguayon de res", "Agujas", "Bistec de bola", "Cuete de res", "Falda de res", "Filete de molida especia", "Roast beef", "Pulpa de res", "Milanesa de res", "Lenguado", "Bacalao", "Atún fresco",  "robalo", "Huachinango", "Trucha", "Merluza", "Jaiba", "Langosta", "Pulpo", "Cangrejo ", "Camarón seco", "Calamar", "Surimi", "Almeja", "Langostinos", "Pollo deshebrado", "Queso cottage o requesón", "Queso fresco(Panela)", "Atún en agua", "Carnes frías (pavo)", "Salchicha (pavo)", "Huevo", "Clara de huevo"]
            vista.cantidad = ["30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "1/4 taza", "45 gr ó 3 Cucharadas", "40 gr", "1/3 de lata", "2 rebanadas chicas", "1 pieza", "1 pieza", "2 piezas"]
               vista.colorTitulo = vwCarnes.backgroundColor
               vista.titulo = "Carnes"
               vista.colorTabla = vwCarnes.backgroundColor
               
           }else if segue.identifier == "cer"{
               vista.raciones = ["Cereal sin endulzar", "Arroz cocido", "Amaranto tostado", "Avena cocida"]
               vista.colorTitulo = vwCereales.backgroundColor
               vista.titulo = "Cereales"
               vista.colorTabla = vwCereales.backgroundColor
               
           }else if segue.identifier == "az"{
               vista.raciones = ["hola", "quetal"]
               vista.colorTitulo = vwAzucar.backgroundColor
               vista.titulo = "Azucar"
               vista.colorTabla = vwAzucar.backgroundColor
               
           }else if segue.identifier == "gr"{
               vista.colorTitulo = vwGrasa.backgroundColor
               vista.titulo = "Grasas"
               vista.raciones = ["Puerco", "quetal"]
               vista.cantidad = ["30 gr", "60 gr"]
               vista.colorTabla = vwGrasa.backgroundColor
               
           }else if segue.identifier == "f"{
               vista.raciones = ["hola", "quetal"]
               vista.colorTitulo = vwFrutas.backgroundColor
               vista.titulo = "Frutas"
               vista.colorTabla = vwFrutas.backgroundColor
               
           }else if segue.identifier == "leg"{
               vista.raciones = ["Lentejas", "Habas", "Garbanzo", "Alubias", "Frijol cocido", "Frijol refrito", "Soya texturizada", "Soya cocida"]
            vista.cantidad = ["1/2 taza o 125 ml", "1/2 taza o 125 ml", "1/2 taza o 125 ml", "1/2 taza o 125 ml", "1/2 taza", "1/3 taza", "3 cucharadas", "1/3 taza"]
               vista.colorTitulo = vwLeguminosas.backgroundColor
               vista.titulo = "Leguminosas"
               vista.colorTabla = vwLeguminosas.backgroundColor
               vista.desc = "Una racion es igual a 1/2 taza"

               
           }else if segue.identifier == "lac"{
               vista.raciones = ["Leche de vaca o soya", "Yogurt"]
            vista.cantidad = ["250 ml o una taza", "250 ml o una taza"]
               vista.colorTitulo = vwLacteos.backgroundColor
               vista.titulo = "Lacteos"
               vista.colorTabla = vwLacteos.backgroundColor
               vista.desc = "Una racion es igual a 1/2 taza"
               vista.desc2 = "(125ml) de:"
               
           }

        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
