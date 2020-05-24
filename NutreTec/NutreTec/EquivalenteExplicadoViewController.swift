//
//  EquivalenteExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 11/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit




class EquivalenteExplicadoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaInfo.dequeueReusableCell(withIdentifier: "cell")!
        celda.textLabel?.text = raciones[indexPath.row]
        celda.detailTextLabel?.text = cantidad[indexPath.row]
        return celda
    }
    
    
    
    @IBOutlet weak var tablaInfo: UITableView!
    @IBOutlet weak var lbldesc1: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var vwTitulo: UIView!
    @IBOutlet weak var vwTabla: UIView!
    @IBOutlet weak var lblRacion: UILabel!
    @IBOutlet weak var vwFondo: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var titulo = "Título"
    var desc = "Una ración es igual a:"
    var colorTitulo : UIColor!
    var colorTabla : UIColor!
    var colorLetra = UIColor.white
    var colorFondo = UIColor.white
    
    var raciones : [String] = []
    var cantidad : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = tablaInfo.frame.size
        lbldesc1.text = desc
        lblTitulo.text = titulo
        lbldesc1.textColor = colorLetra
        lblTitulo.textColor = colorLetra
        vwTabla.layer.cornerRadius = 10
        vwTitulo.layer.cornerRadius = 10
        vwTabla.backgroundColor = colorTabla
        vwTitulo.backgroundColor = colorTitulo
        vwFondo.backgroundColor = colorFondo
        tablaInfo.layer.cornerRadius = 10


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
