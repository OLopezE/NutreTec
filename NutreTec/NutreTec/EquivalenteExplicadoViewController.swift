//
//  EquivalenteExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 11/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class EquivalenteExplicadoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        cell.textLabel?.text = "Hola"
        return cell
    }
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var vwTitulo: UIView!
    @IBOutlet weak var vwTabla: UIView!
    
    var titulo = "Título"
    //var colorTitulo
    //var colorTabla : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitulo.text = titulo
        //vwTitulo.backgroundColor = colorTitulo
        //vwTabla.backgroundColor = colorTitulo
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
