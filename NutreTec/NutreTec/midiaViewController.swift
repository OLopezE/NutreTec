//
//  midiaViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 21/04/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class midiaViewController: UIViewController {
    
    @IBOutlet weak var fecha: UILabel!
    
    var date = Date()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        obtenDia()
    }
    
    
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        date = date.addingTimeInterval(-86400)
        obtenDia()
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        date = date.addingTimeInterval(86400)
        obtenDia()
    }
    
    func obtenDia(){
        let dia: DateFormatter = DateFormatter()
        dia.dateFormat = "MMM dd, yyyy"
        fecha.text = dia.string(from: date)
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
