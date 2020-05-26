//
//  historialExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 18/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit
import Charts

class historialExplicadoViewController: UIViewController {

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var chartView: LineChartView!
    
    var titulo = ""
    var tamano = 40
    var date = Date()
    var tipo = ""
    var diaString = ""
    var misRegistros = [RegistroProgreso]()
    // La cantidad de datos disponibles desde hace un mes.
    var numPuntosMes = 0
    // La cantidad de datos disponibles desde hace una semana.
    var numPuntosSem = 0
    // Los valores para la gráfica de mes.
    var valoresMes = [ChartDataEntry]()
    // Los valores para la gráfica de semana.
    var valoresSem = [ChartDataEntry]()
    
    override func viewDidLoad() {
        lblTitulo.text = titulo
        lblTitulo.font = lblTitulo.font.withSize(CGFloat(tamano))
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Encontrar la cantidad de datos disponibles.
        misRegistros = []
        
        // Cargar los registros del archivo y guardarlos en misRegistros.
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("registrosProgreso.plist")

        misRegistros.removeAll()
        do {
            let data = try Data.init(contentsOf: pathArchivo)
            misRegistros = try PropertyListDecoder().decode([RegistroProgreso].self, from: data)
        } catch {
            print("Error al cargar los datos")
        }

        // Obtener la fecha de hoy.
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        diaString = dateFormatter.string(from: date)
        
        let dayDateFormatter = DateFormatter()
        dayDateFormatter.dateFormat = "dd"
        // Para contar un máximo de 30 días
        var i = 30
        // El índice en el arreglo de registros
        var j = misRegistros.count - 1
        while i > 0 {
            
            var entry = ChartDataEntry()
            
            // Ya no hay más registros.
            if j < 0 {
                break
            }
            
            let tempDate = dateFormatter.date(from: misRegistros[j].dia)
            // let tempDay = Double(dayDateFormatter.string(from: tempDate!))!
            
            // Mes
            if date.timeIntervalSince(tempDate!) < 2592000 {
                if tipo == "peso" {
                    entry = ChartDataEntry(x: Double(i), y: misRegistros[j].peso)
                } else if tipo == "masa" {
                    entry = ChartDataEntry(x: Double(i), y: misRegistros[j].masaMuscular)
                } else if tipo == "grasa" {
                    entry = ChartDataEntry(x: Double(i), y: misRegistros[j].porcentajeGrasa)
                }
                
                valoresMes.append(entry)
            }
            
            // Semana
            if date.timeIntervalSince(tempDate!) < 604800 {
                if tipo == "peso" {
                    entry = ChartDataEntry(x: Double(i), y: misRegistros[j].peso)
                } else if tipo == "masa" {
                    entry = ChartDataEntry(x: Double(i), y: misRegistros[j].masaMuscular)
                } else if tipo == "grasa" {
                    entry = ChartDataEntry(x: Double(i), y: misRegistros[j].porcentajeGrasa)
                }
                
                valoresSem.append(entry)
            }
            
            j -= 1
            i -= 1
            
        }
        
        // Voltear los arreglos para que estén en orden cronológico.
        valoresMes.reverse()
        valoresSem.reverse()
        
        // Crear la gráfica.
        setChartValues(entriesArray: valoresMes)
    }
    
    func setChartValues(entriesArray : [ChartDataEntry]) {
        
        /*
        
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count)) + 3)
            return ChartDataEntry(x: Double(i), y: val)
        }
        
        let set1 = LineChartDataSet(entries: values, label: titulo)
        let data = LineChartData(dataSet: set1)
 
         */
        
        chartView.xAxis.granularity = 1.0
        
        let set1 = LineChartDataSet(entries: entriesArray, label: titulo)
        let data = LineChartData(dataSet: set1)
 
        self.chartView.data = data
    }

    // Busca en misRegistros el día de hoy.
    // Empieza a buscar desde el final.
    // Si existe, regresarlo.
    // Si no, regresar nil.
    func buscarDia(dia: String) -> RegistroProgreso? {
        
        for reg in misRegistros.reversed() {
            if reg.dia == diaString {
                return reg
            }
        }
        
        return nil
    }
    
    // Cuando se cambia el modo del segmented control.
    @IBAction func segmentedCambiado(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            setChartValues(entriesArray: valoresMes)
        } else if sender.selectedSegmentIndex == 1 {
            
            setChartValues(entriesArray: valoresSem)
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
