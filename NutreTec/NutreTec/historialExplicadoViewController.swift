//
//  historialExplicadoViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 18/05/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit
import Charts

class historialExplicadoViewController: UIViewController, IAxisValueFormatter {

    @IBOutlet weak var lblTitulo: UILabel!
    // La vista de la gráfica de puntos.
    @IBOutlet weak var chartView: LineChartView!
    
    var titulo = ""
    var tamano = 40
    var date = Date()
    var tipo = ""
    var diaString = ""
    var misRegistros = [RegistroProgreso]()
    // Los valores para la gráfica.
    var valores = [ChartDataEntry]()
    // valores2 y valores3 se usan si se deben graficar todas las métricas.
    // (Cuando tipo == "general")
    var valores2 = [ChartDataEntry]()
    var valores3 = [ChartDataEntry]()
    // Arreglo de strings con fechas para usar en el eje x de la gráfica.
    var fechas = [String]()
    // Los índices de los datos en los extremos de esta "página".
    var jIzq = -1, jDer = -1
    
    @IBOutlet weak var btnIzquierda: UIButton!
    @IBOutlet weak var btnDerecha: UIButton!
    
    override func viewDidLoad() {
        lblTitulo.text = titulo
        lblTitulo.font = lblTitulo.font.withSize(CGFloat(tamano))
        super.viewDidLoad()
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }

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

        // Generar máximo 5 puntos y empezar a buscar desde
        // el último elemento del arreglo misRegistros.
        (jIzq, jDer) = generarSetsYGrafica(i: 5, j: misRegistros.count - 1)
    }
    
    // Generar los arreglos (valores, valores2, valores3) con los
    // puntos que se graficarán.
    // Generar la gráfica.
    // Parámetros:
    //  i: la cantidad máxima de puntos que se generarán
    //  j: el índice inicial para buscar en el arreglos misRegistros
    //     de manera descendente (por defecto este valor es
    //     misRegistros.count - 1).
    // Regresa los últimos índices a la izquierda y derecha.
    func generarSetsYGrafica(i : Int, j : Int) -> (Int, Int) {
        
        let jInicial = j
        
        var i = i - 1
        var j = j
        
        // No es válido.
        // Fuera del rango del arreglo.
        if jInicial < 0 {
            return (-1, -1)
        } else if jInicial > misRegistros.count - 1 {
            while j > misRegistros.count - 1 {
                j -= 1
            }
        }
        
        // Habilitar/deshabilitar botones
        // cuando no hay más datos en
        // alguna dirección.
        if jInicial - i <= 0 {
            btnIzquierda.isEnabled = false
        } else {
            btnIzquierda.isEnabled = true
        }
        
        if jInicial >= misRegistros.count - 1 {
            btnDerecha.isEnabled = false
        } else {
            btnDerecha.isEnabled = true
        }
        
        // Las fechas para mostrar como etiquetas
        // de los ejes.
        fechas.removeAll()
        valores.removeAll()
        valores2.removeAll()
        valores3.removeAll()
        
        while i >= 0 {
            
            var entry = ChartDataEntry()
            
            // Ya no hay más registros.
            if j < 0 {
                break
            }
            
            if tipo == "peso" {
                entry = ChartDataEntry(x: Double(i), y: misRegistros[j].peso)
            } else if tipo == "masa" {
                entry = ChartDataEntry(x: Double(i), y: misRegistros[j].masaMuscular)
            } else if tipo == "grasa" {
                entry = ChartDataEntry(x: Double(i), y: misRegistros[j].porcentajeGrasa)
            }
            
            if tipo == "general" {
                let entryPeso = ChartDataEntry(x: Double(i), y: misRegistros[j].peso)
                let entryMasa = ChartDataEntry(x: Double(i), y: misRegistros[j].masaMuscular)
                let entryGrasa = ChartDataEntry(x: Double(i), y: misRegistros[j].porcentajeGrasa)
                
                valores.append(entryPeso)
                valores2.append(entryMasa)
                valores3.append(entryGrasa)
                
            } else {
                valores.append(entry)
            }
            
            fechas.append(misRegistros[j].dia)
            
            j -= 1
            i -= 1
            
        }
        
        // Voltear los arreglos para que estén en orden cronológico.
        valores.reverse()
        valores2.reverse()
        valores3.reverse()
        fechas.reverse()
        
        // Si no había 'i' registros...
        // desplazar los índices.
        if i >= 0 {
            var z = 0
            for reg in valores {
                reg.x = Double(z)
                z += 1
            }
            
            z = 0
            for reg in valores2 {
                reg.x = Double(z)
                z += 1
            }
            
            z = 0
            for reg in valores3 {
                reg.x = Double(z)
                z += 1
            }
        }
        
        // Crear la gráfica.
        setChartValues(tipo: tipo)
        
        return (j + 1, (jInicial <= misRegistros.count - 1) ? jInicial : misRegistros.count - 1)
    }
    
    // Generar la gráfica.
    func setChartValues(tipo : String) {

        let data = LineChartData()
        self.chartView.xAxis.granularity = 1.0
        
        if tipo != "general" {
            
            let label = tipo == "peso" ? "Peso (kg)" : (tipo == "masa") ? "Masa muscular (kg)" : (tipo == "grasa") ? "Porcentaje de grasa (%)" : ""
            
            let set1 = LineChartDataSet(entries: valores, label: label)
            
            data.addDataSet(set1)
        }

        if tipo == "peso" {
            self.chartView.leftAxis.axisMinimum = 0
            self.chartView.leftAxis.axisMaximum = data.getDataSetByIndex(0).yMax * 2
        } else if tipo == "masa" {
            self.chartView.leftAxis.axisMinimum = 0
            self.chartView.leftAxis.axisMaximum = data.getDataSetByIndex(0).yMax * 2
        } else if tipo == "grasa" {
            self.chartView.leftAxis.axisMinimum = 0
            self.chartView.leftAxis.axisMaximum = 100
        } else if tipo == "general" {
            let set1 = LineChartDataSet(entries: valores, label: "Peso (kg)")
            let set2 = LineChartDataSet(entries: valores2, label: "Masa muscular (kg)")
            let set3 = LineChartDataSet(entries: valores3, label: "Porcentaje de grasa (%)")

            // Poner las líneas de colores diferentes.
            var colors1 = [NSUIColor]()
            var colors2 = [NSUIColor]()
            for _ in 0..<set1.count {
                colors1.append(UIColor.red as NSUIColor)
                colors2.append(UIColor.green as NSUIColor)
            }
            
            set1.colors = [colors1[0]]
            set1.circleColors = colors1
            
            set2.colors = [colors2[0]]
            set2.circleColors = colors2
            
            data.setValueTextColor(UIColor.black)
            
            data.addDataSet(set1)
            data.addDataSet(set2)
            data.addDataSet(set3)
            
        }

        self.chartView.xAxis.valueFormatter = self
        self.chartView.xAxis.labelTextColor = UIColor.black
        self.chartView.leftAxis.labelTextColor = UIColor.black
        self.chartView.xAxis.drawGridLinesEnabled = false
       
        self.chartView.leftAxis.enabled = false
        self.chartView.rightAxis.enabled = false
        self.chartView.rightAxis.labelTextColor = UIColor.black
        self.chartView.legend.textColor = UIColor.black

        self.chartView.data = data


    }
    
    // Para poner etiquetas personalizadas al eje x.
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        
        let val = Int(value)
        var str = ""
        
        if val >= 0 && val < fechas.count {
            str = fechas[val]
        }
        return str
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
    
    @IBAction func tapIzquierda(_ sender: UIButton) {
        (jIzq, jDer) = generarSetsYGrafica(i: 5, j: jIzq - 1)
    }
    
    @IBAction func tapDerecha(_ sender: Any) {
        (jIzq, jDer) = generarSetsYGrafica(i: 5, j: jDer + 5)
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
