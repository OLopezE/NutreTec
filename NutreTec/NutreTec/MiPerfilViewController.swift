//
//  MiPerfilViewController.swift
//  NutreTec
//
//  Created by Alejandro López on 14/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit

class MiPerfilViewController: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var segmentedSexo: UISegmentedControl!
    @IBOutlet weak var dateFechaNacimiento: UIDatePicker!
    @IBOutlet weak var btnEditarGuardar: UIButton!
    var perfil : Perfil!
    
    var estaEditando = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tfNombre.isUserInteractionEnabled = false
        self.segmentedSexo.isUserInteractionEnabled = false
        self.dateFechaNacimiento.isUserInteractionEnabled = false
        
        perfil = Perfil(nombre: "", sexo: 0, fechaNacimiento: Date())
        
        // Cargar el perfil guardado si existe.
        do {
            let data = try Data.init(contentsOf: dataFileURL())
            perfil = try PropertyListDecoder().decode(Perfil.self, from: data)
        } catch {
            print("Error al cargar los datos")
        }
        
        // Poner los datos en los cmapos.
        self.tfNombre.text = perfil.nombre
        self.segmentedSexo.selectedSegmentIndex = perfil.sexo
        self.dateFechaNacimiento.date = perfil.fechaNacimiento
        
    }
    
    @IBAction func tapEditarGuardar(_ sender: Any) {
        
        self.estaEditando = !self.estaEditando
        
        // Al presionar "Guardar"...
        if !estaEditando {
            // Ocultar el teclado.
            view.endEditing(true)
            
            perfil.nombre = self.tfNombre.text ?? ""
            perfil.sexo = self.segmentedSexo.selectedSegmentIndex
            perfil.fechaNacimiento = self.dateFechaNacimiento.date
            
            // Guardar los datos.
            do {
                let data = try PropertyListEncoder().encode(perfil)
                try data.write(to: dataFileURL())
            }catch{
                print("Error al guardar los datos")
            }
        }
        
        self.btnEditarGuardar.setTitle(self.estaEditando ? "Guardar" : "Editar", for: .normal)
        
        self.tfNombre.isUserInteractionEnabled = self.estaEditando
        self.segmentedSexo.isUserInteractionEnabled = self.estaEditando
        self.dateFechaNacimiento.isUserInteractionEnabled = self.estaEditando
        
    }
    
    @IBAction func hideKeyboardOnTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //MARK: - Codable
    func dataFileURL () -> URL {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("perfil.plist")
        return pathArchivo
    }
    
    // La clase que se utiliza para guardar la información con codable.
    class Perfil : Codable {
        var nombre : String
        var sexo : Int
        var fechaNacimiento : Date
        
        init(nombre : String, sexo : Int, fechaNacimiento : Date) {
            self.nombre = nombre
            self.sexo = sexo
            self.fechaNacimiento = fechaNacimiento
        }
        
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
