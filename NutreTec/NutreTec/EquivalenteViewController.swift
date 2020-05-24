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
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var vwTitulo: UIView!
    @IBOutlet weak var vwAzucar: UIView!
    @IBOutlet weak var vwGrasa: UIView!
    @IBOutlet weak var vwFrutas: UIView!
    @IBOutlet weak var vwLacteos: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwLeguminosas: UIView!
    @IBOutlet weak var vwCarnes: UIView!
    @IBOutlet weak var vwVegetales: UIView!
    
    
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
        vwTitulo.layer.cornerRadius = 10
        vwTitulo.backgroundColor = UIColor.white
        lblTitulo.textColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


          let vista = segue.destination as! EquivalenteExplicadoViewController
           if segue.identifier == "v"{
            vista.raciones = ["Acelga", "Alcachofas","Apio", "Berenjena", "Brócoli", "Cebolla", "Cilantro", "Coliflor", "Betabel", "Chile Poblano", "Jugo de tomate", "Champiñones", "Chayote", "Ejotes", "Espinacas", "Flor de calabaza", "Jitomate", "Lechuga", "Nopales", "Calabacita", "Pimiento", "Jugo de verduras", "Ensalada promedio", "Pepino", "Perejil", "Rábano", "Repollo", "Jícama", "Tomate", "Espárragos", "Cebolla", "Zanahoria", "Germen"]
            vista.cantidad = ["1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza", "1/2 taza","1/2 taza","1/2 taza", "1/2 taza"]
               vista.colorTitulo = vwVegetales.backgroundColor
               vista.titulo = "Vegetales"
               vista.colorTabla = vwVegetales.backgroundColor
               vista.desc = "Una racion es igual a:"
               vista.colorFondo = UIColor(red: 0, green: 114/255, blue: 66/255, alpha: 1)
               

           }else if segue.identifier == "car"{
               vista.raciones = ["Pechuga de pollo/pavo", "Aguayon de res", "Agujas", "Bistec de bola", "Cuete de res", "Falda de res", "Filete de molida especia", "Roast beef", "Pulpa de res", "Milanesa de res", "Lenguado", "Bacalao", "Atún fresco",  "Róbalo", "Huachinango", "Trucha", "Merluza", "Jaiba", "Langosta", "Pulpo", "Cangrejo ", "Camarón seco", "Calamar", "Surimi", "Almeja", "Langostinos", "Pollo deshebrado", "Queso cottage o requesón", "Queso fresco(Panela)", "Atún en agua", "Carnes frías (pavo)", "Salchicha (pavo)", "Huevo", "Clara de huevo"]
            vista.cantidad = ["30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "30 gr", "1/4 taza", "45 gr ó 3 Cucharadas", "40 gr", "1/3 de lata", "2 rebanadas chicas", "1 pieza", "1 pieza", "2 piezas"]
               vista.colorTitulo = vwCarnes.backgroundColor
               vista.titulo = "Carnes"
               vista.colorTabla = vwCarnes.backgroundColor
            vista.colorFondo = UIColor(red: 138/255, green: 108/255, blue: 216/255, alpha: 1)
               
           }else if segue.identifier == "cer"{
               vista.raciones = ["Cereal sin endulzar", "Arroz cocido", "Amaranto tostado", "Avena cocida", "Avena cruda","Salvado y germen de trigo","Pasta cocida", "Harina/maizena", "Pan de barra integral", "Pan para hot dog", "Galletas saladas", "Kraker Bran", "Galletas habaneras", "Galletas Marías", "Elote desgranado", "Elote mazorca", "Papa con cáscara", "Granola simple", "Tortilla de maíz", "Tostada horneada", "Pan para hamburguesa chico", "Pan para hamburguesa grande", "Francés sin migajón", "Francés con migajón", "Crotones", "Palomitas naturales"]
            vista.cantidad = ["1/2 taza", "1/2 taza", "1/3 taza", "1/2 taza", "1/3 taza","1/2 taza","1/2 taza", "2 cucharadas o 30 gr", "1 rebanada", "!/2 pieza", "6 cuadros", "3 cruados", "3 piezas", "4 piezas", "1/2 pieza", "3/4 pieza", "1/2 pieza", "3 cucharadas", "1 pieza", "2 piezas", "1/2 pieza", "1/3 pieza", "1/2 pieza", "1/4 pieza", "1/2 taza", "2 tazas"]
               vista.colorTitulo = vwCereales.backgroundColor
               vista.titulo = "Cereales"
               vista.colorTabla = vwCereales.backgroundColor
            vista.colorFondo = UIColor(red: 198/255, green: 188/255, blue: 68/255, alpha: 1)
               
           }else if segue.identifier == "az"{
               vista.raciones = ["Azúcar", "Miel", "Mermelada", "Yakult", "Cajeta", "Gelatina regular", "Chocolate en polvo", "Refrescos", "Catsup"]
            vista.cantidad = ["1 cucharada ó 15 gr", "1 cucharada ó 15 gr","1 cucharada ó 15 gr", "1 (80 ml)","1 cucharada ó 15 gr","1/2 taza", "1 cucharada ó 15 gr", "1/4 de lata","1 cucharada ó 15 gr"]
               vista.colorTitulo = vwAzucar.backgroundColor
               vista.titulo = "Azucar"
               vista.colorTabla = vwAzucar.backgroundColor
            vista.colorFondo = UIColor(red: 150/255, green: 149/255, blue: 176/255, alpha: 1)
               
           }else if segue.identifier == "gr"{
               vista.colorTitulo = vwGrasa.backgroundColor
               vista.titulo = "Grasas"
            vista.raciones = ["Aceite", "Queso crema", "Crema", "Guacamole", "Cacahuate", "Semillas de girasol o calabaza","Piñones", "Mantequilla", "Leche de Almendra", "Mayonesa", "Nuez", "Pistaches", "Almendra", "Aguacate", "Aceitunas", "Cocoa", "Aderezos"]
            vista.cantidad = ["1 cucharadita ó 5 gr", "1 cucharada ó 15 gr", "1 cucharada ó 15 gr", "2 cucharadas ó 30 gr", "18 piezas", "1.5 cucharadas ó 22.5 gr", "2 cucharaditas ó 10 gr", "1 cucharadita ó 5 gr", "250 ml", "1 cucharadita", "3 piezas", "6 piezas", "10 piezas", "1/4 pieza", "6 piezas", "2 cucharadas ó 30 gr", "1 cucharada ó 15 gr"]
               vista.colorTabla = vwGrasa.backgroundColor
            vista.colorFondo = UIColor(red: 134/255, green: 136/255, blue: 136/255, alpha: 1)
               
           }else if segue.identifier == "f"{
            vista.raciones = ["Arándanos", "Ciruela", "Chabacano", "Durazno", "Fresa", "Guayaba", "Jugo de frutas","Jugo de uva", "Limón", "Mandarina", "Mango", "Kiwi", "Manzana", "Melón", "Naranja", "Papaya", "Pera", "Piña","Plátano", "Sandía", "Toronja", "Tuna", "Uva", "Pasitas"]
            vista.cantidad = ["2 cucharadas", "3 piezas", "4 piezas", "2 piezas", "1 taza", "2 medianas", "1/2 taza","1/4 taza", "libre", "2 piezas", "1/2 mediana", "1.5 piezas", "1 pieza", "1 taza", "1 pieza", "2/3 taza", "1/2 taza", "2/3 taza","1/2 pieza", "1 taza", "1 pieza", "2 piezas", "9 piezas", "10 piezas"]
               vista.colorTitulo = vwFrutas.backgroundColor
               vista.titulo = "Frutas"
               vista.colorTabla = vwFrutas.backgroundColor
            vista.colorFondo = UIColor(red: 223/255, green: 72/255, blue: 118/255, alpha: 1)
               
           }else if segue.identifier == "leg"{
               vista.raciones = ["Lentejas", "Habas", "Garbanzo", "Alubias", "Frijol cocido", "Frijol refrito", "Soya texturizada", "Soya cocida"]
            vista.cantidad = ["1/2 taza o 125 ml", "1/2 taza o 125 ml", "1/2 taza o 125 ml", "1/2 taza o 125 ml", "1/2 taza", "1/3 taza", "3 cucharadas", "1/3 taza"]
               vista.colorTitulo = vwLeguminosas.backgroundColor
               vista.titulo = "Leguminosas"
               vista.colorTabla = vwLeguminosas.backgroundColor
               vista.desc = "Una racion es igual a:"
            vista.colorFondo = UIColor(red: 122/255, green: 124/255, blue: 201/255, alpha: 1)

               
           }else if segue.identifier == "lac"{
               vista.raciones = ["Leche de vaca o soya", "Yogurt"]
               vista.cantidad = ["250 ml o una taza", "250 ml o una taza"]
               vista.colorTitulo = vwLacteos.backgroundColor
               vista.titulo = "Lacteos"
               vista.colorTabla = vwLacteos.backgroundColor
               vista.desc = "Una racion es igual a:"
               vista.colorFondo = UIColor(red: 102/255, green: 178/255, blue: 212/255, alpha: 1)
               
           }

        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
