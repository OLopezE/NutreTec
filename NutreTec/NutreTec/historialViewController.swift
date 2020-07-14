//
//  historialViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 14/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class historialViewController: UIViewController {

    
    @IBOutlet weak var vwPeso: UIView!
    @IBOutlet weak var vwMasa: UIView!
    @IBOutlet weak var vwGrasa: UIView!
    @IBOutlet weak var bttnGeneral: UIButton!
    
    
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfMasa: UITextField!
    @IBOutlet weak var tfGrasa: UITextField!
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    var date = Date()
    var diaString : String!
    var peso = 0.0
    var masa = 0.0
    var grasa = 0.0
    
    var registroHoy = RegistroProgreso()
    var misRegistros = [RegistroProgreso]()
    
    override func viewDidLoad() {
        vwPeso.layer.cornerRadius = 10
        vwMasa.layer.cornerRadius = 10
        vwGrasa.layer.cornerRadius = 10
        bttnGeneral.layer.cornerRadius = 10
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil )
        
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }

        diaString = obtenDia()
        lblFecha.text = diaString
        
        // Do any additional setup after loading the view.
        
        misRegistros = []
        
        // Cargar registros de progreso (peso, masa muscular, porcentaje de grasa).
        if FileManager.default.fileExists(atPath: dataFileURL().path){
            obtenerRegistros()
        }
        

        buscaDia()

        // Si no se encontró un registro de hoy,
        // estos valores son 0.
        tfPeso.text = peso == 0 ? "" : "\(peso)"
        tfMasa.text = masa == 0 ? "" : "\(masa)"
        tfGrasa.text = grasa == 0 ? "" : "\(grasa)"
        
    }
    deinit{
        NotificationCenter.default.removeObserver(self)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! historialExplicadoViewController
        if segue.identifier == "peso"{
            vista.titulo = "Peso"
            vista.tipo = "peso"
        } else if segue.identifier == "masa" {
            vista.titulo = "Masa muscular"
            vista.tipo = "masa"
        } else if segue.identifier == "grasa" {
            vista.titulo = "Porcentaje de Grasa"
            vista.tipo = "grasa"
            vista.tamano = 30
        } else if segue.identifier == "general" {
            vista.titulo = "General"
            vista.tipo = "general"
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @objc func keyboardWillChange(notification: Notification){
           guard let keyboardRect = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]as? NSValue)?.cgRectValue else {
               return
           }
           if notification.name == UIResponder.keyboardWillShowNotification || notification.name == UIResponder.keyboardWillChangeFrameNotification {
            if screenSize.height < 800{
                view.frame.origin.y = -keyboardRect.height * 15/24
                
            }else {
                view.frame.origin.y = -keyboardRect.height * 1/2

            }
           }else{
               view.frame.origin.y = 0

           }
           
           

           
       }
       
    
    // Regresa la fecha de hoy en el formato especificado.
    func obtenDia() -> String {
        let dia: DateFormatter = DateFormatter()
        dia.dateFormat = "MMM dd, yyyy"
        return dia.string(from: date)
    }
    
    // Buscar el registro del día de hoy.
    // Si existe, guardarlo en registroHoy.
    // Si no, crear uno nuevo en registroHoy.
    func buscaDia() {
        var existe = false
        for reg in misRegistros {
            if reg.dia == diaString {
                peso = reg.peso
                masa = reg.masaMuscular
                grasa = reg.porcentajeGrasa
                registroHoy = reg
                existe = true
                break
            }
        }
        
        // Si no existe, crearlo.
        if !existe {
            registroHoy = RegistroProgreso(dia: diaString, peso: 1.0, masaMuscular: 1.0, porcentajeGrasa: 1.0)
            misRegistros.append(registroHoy)
        }
    }
    
    @IBAction func hideKeyboardOnTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //MARK: - Codable
    
    func dataFileURL() -> URL {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("registrosProgreso.plist")
        return pathArchivo
    }
    
    // Guardar misRegistros en el archivo.
    @IBAction func guardarRegistros(){
        do {
            let data = try PropertyListEncoder().encode(misRegistros)
            try data.write(to: dataFileURL())
        } catch {
            print("Error al guardar los datos")
        }
    }
    
    // Cargar los registros del archivo y guardarlos en misRegistros.
    func obtenerRegistros() {
        misRegistros.removeAll()
        do {
            let data = try Data.init(contentsOf: dataFileURL())
            misRegistros = try PropertyListDecoder().decode([RegistroProgreso].self, from: data)
        } catch {
            print("Error al cargar los datos")
        }
    }
    
    // Botón guardar.
    @IBAction func guardar(_ sender: UIButton) {
        
        // Ocultar el teclado.
        view.endEditing(true)
        
        // Ya se cargó o creó el registro de hoy en registroHoy.
        
        // Validar que se ingresen números válidos.
        // Establecer un valor a 1 si no es válido.
        peso = (tfPeso.text! as NSString).doubleValue
        if peso <= 0.0 {
            
            let alert = UIAlertController(title: "Error", message: "El peso introducido no es válido.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            self.present(alert, animated: true)
            
            tfPeso.text = ""
            peso = 0.0
            
            return
        }
        
        masa = (tfMasa.text! as NSString).doubleValue
        if masa <= 0.0 {
            
            let alert = UIAlertController(title: "Error", message: "La masa muscular introducida no es válida.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            self.present(alert, animated: true)
            
            tfMasa.text = ""
            masa = 0.0
            
            return
        }
        
        grasa = (tfGrasa.text! as NSString).doubleValue
        if Double(tfGrasa.text!) == nil || grasa < 0.0 || grasa > 100.0 {
            
            let alert = UIAlertController(title: "Error", message: "El porcentaje de grasa introducido no es válido.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            self.present(alert, animated: true)
            
            tfGrasa.text = ""
            grasa = 0.0
            
            return
        }
        
        // Guardar los nuevos valores.
        //registroHoy = RegistroProgreso(dia: diaString, peso: peso, masaMuscular: masa, porcentajeGrasa: grasa)
        registroHoy.peso = peso
        registroHoy.masaMuscular = masa
        registroHoy.porcentajeGrasa = grasa
        
        // Guardar el archivo de registros.
        guardarRegistros()
        
        //registros los regresa a 0
        let alert = UIAlertController(title: "Bien hecho", message: "Se han dado de alta los datos de la cita de hoy", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}
