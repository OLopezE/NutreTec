//
//  FirstViewController.swift
//  NutreTec
//
//  Created by Oscar Francisco Lopez Escobar on 22/04/20.
//  Copyright © 2020 disp_moviles. All rights reserved.
//

import UIKit
import Charts

class FirstViewController: UIViewController {
    //MARK:-PIE CHARTS PARTE 1
    //Verduras
    @IBOutlet weak var pieChartVerdura: PieChartView!
    var VegetalesData = PieChartDataEntry(value: 0)
    var VegetalesMaxData = PieChartDataEntry(value: 0)
    var VegetalesDataEntries = [PieChartDataEntry]()
    var maxvegetales = -1.0
    var maxV = -1.0
    
    //Proteina
    @IBOutlet weak var pieChartProteina: PieChartView!
    var ProteinaData = PieChartDataEntry(value: 0)
    var ProteinaMaxData = PieChartDataEntry(value: 0)
    var ProteinaDataEntries = [PieChartDataEntry]()
    var maxproteina = -1.0
    var maxP = -1.0
    
    //Azucar
    @IBOutlet weak var pieChartAzucar: PieChartView!
    var AzucarData = PieChartDataEntry(value: 0)
    var AzucarMaxData = PieChartDataEntry(value: 0)
    var AzucarDataEntries = [PieChartDataEntry]()
    var maxazucar = -1.0
    var maxA = -1.0
    
    //Lacteos
    @IBOutlet weak var pieChartLacteos: PieChartView!
    var LacteosData = PieChartDataEntry(value: 0)
    var LacteosMaxData = PieChartDataEntry(value: 0)
    var LacteosDataEntries = [PieChartDataEntry]()
    var maxlacteos = -1.0
    var maxL = -1.0
    
    //Fruta
    @IBOutlet weak var pieChartFrutas: PieChartView!
    var FrutaData = PieChartDataEntry(value: 0)
    var FrutaMaxData = PieChartDataEntry(value: 0)
    var FrutaDataEntries = [PieChartDataEntry]()
    var maxfruta = -1.0
    var maxF = -1.0
    
    //Leguminosas
    @IBOutlet weak var pieChartLeguminosas: PieChartView!
    var LeguminosasData = PieChartDataEntry(value: 0)
    var LeguminosasMaxData = PieChartDataEntry(value: 0)
    var LeguminosasDataEntries = [PieChartDataEntry]()
    var maxleguminosas = -1.0
    var maxLe = -1.0
    
    //Grasas
    @IBOutlet weak var pieChartGrasas: PieChartView!
    var GrasasData = PieChartDataEntry(value: 0)
    var GrasasMaxData = PieChartDataEntry(value: 0)
    var GrasasDataEntries = [PieChartDataEntry]()
    var maxgrasas = -1.0
    var maxG = -1.0
    
    //Cereal
    @IBOutlet weak var pieChartCereales: PieChartView!
    var CerealData = PieChartDataEntry(value: 0)
    var CerealMaxData = PieChartDataEntry(value: 0)
    var CerealDataEntries = [PieChartDataEntry]()
    var maxcereal = -1.0
    var maxC = -1.0
    
    
    
    //vistas
    @IBOutlet weak var vistaAlimentos: UIView!
    
    
    
    @IBOutlet weak var fecha: UILabel!
    var misDias : [dias]!
    
    var date = Date()
    
    @IBOutlet weak var vwLeguminosas: UIView!
    @IBOutlet weak var vwLacteos: UIView!
    @IBOutlet weak var vwCarne: UIView!
    @IBOutlet weak var vwVegetales: UIView!
    @IBOutlet weak var vwCereales: UIView!
    @IBOutlet weak var vwGrasas: UIView!
    @IBOutlet weak var vwAzucar: UIView!
    @IBOutlet weak var vwAgua: UIView!
    @IBOutlet weak var vwFrutas: UIView!
    @IBOutlet weak var bttnNutretec: UIButton!
    @IBOutlet weak var elPana: UIImageView!
    
    
    @IBOutlet weak var lblCarne: UILabel!
    @IBOutlet weak var lblVegetales: UILabel!
    @IBOutlet weak var lblAzucar: UILabel!
    @IBOutlet weak var lblLeguminosas: UILabel!
    @IBOutlet weak var lblFrutas: UILabel!
    @IBOutlet weak var lblCereales: UILabel!
    @IBOutlet weak var lblGrasas: UILabel!
    @IBOutlet weak var lblLeche: UILabel!
    @IBOutlet weak var lblAgua: UILabel!
    
    @IBOutlet weak var lblMidia: UILabel!
    var fca = 0
    var fv = 0
    var flegu = 0
    var faz = 0
    var fce = 0
    var fg = 0
    var ff = 0
    var fag = 0
    var fleche = 0
    var colorTmp = UIColor.white
    var colorLetra = UIColor.black
    var mike = 0
    var alerta = UIColor(red: 235/255, green: 63/255, blue: 52/255, alpha: 1)
    var sigue = UIColor(red: 139/255, green: 211/255, blue: 126/255, alpha: 1)
    
    var metaCarne = UserDefaults.standard.integer(forKey: "carnes")
    var metaVegetales = UserDefaults.standard.integer(forKey: "vegetales")
    var metaAzucar = UserDefaults.standard.integer(forKey: "azucares")
    var metaLeguminosas = UserDefaults.standard.integer(forKey: "leguminosas")
    var metaFrutas = UserDefaults.standard.integer(forKey: "frutas")
    var metaCereales = UserDefaults.standard.integer(forKey: "cereales")
    var metaGrasas = UserDefaults.standard.integer(forKey: "grasas")
    var metaAgua = UserDefaults.standard.integer(forKey: "agua")
    var metaLacteo = UserDefaults.standard.integer(forKey: "leche")
    
    
    override func viewDidLoad() {
        
        misDias = []
        
        if #available(iOS 13.0, *){
            overrideUserInterfaceStyle = .light
        }
        
        misDias.append(dias(carne: 0, vegetal: 0, leche: 0, grasa: 0, fruta: 0, agua: 0, leguminosa: 0, azucar: 0, cereales: 0, dia: lblMidia.text!))
        super.viewDidLoad()
        vwAzucar.layer.cornerRadius = 10
        vwFrutas.layer.cornerRadius = 10
        vwLeguminosas.layer.cornerRadius = 10
        vwLacteos.layer.cornerRadius = 10
        vwAgua.layer.cornerRadius = 10
        vwCereales.layer.cornerRadius = 10
        vwCarne.layer.cornerRadius = 10
        vwVegetales.layer.cornerRadius = 10
        vwGrasas.layer.cornerRadius = 10
        bttnNutretec.layer.cornerRadius = 10
        lblMidia.textColor = colorLetra
        
        
        
        if FileManager.default.fileExists(atPath: dataFileURL().path){
            obtenerDias()
        }
        // Do any additional setup after loading the view.
        obtenDia()
        buscaDia()
        
        
    }
    
   
    override func  viewDidAppear(_ animated: Bool) {
        metaCarne = UserDefaults.standard.integer(forKey: "carnes")
        metaVegetales = UserDefaults.standard.integer(forKey: "vegetales")
        metaAzucar = UserDefaults.standard.integer(forKey: "azucares")
        metaLeguminosas = UserDefaults.standard.integer(forKey: "leguminosas")
        metaFrutas = UserDefaults.standard.integer(forKey: "frutas")
        metaCereales = UserDefaults.standard.integer(forKey: "cereales")
        metaGrasas = UserDefaults.standard.integer(forKey: "grasas")
        metaAgua = UserDefaults.standard.integer(forKey: "agua")
        metaLacteo = UserDefaults.standard.integer(forKey: "leche")
        buscaDia()
    }
    
    @IBAction func panaMike(_ sender: UIButton) {
        mike += 1
        if mike == 10{
            elPana.isHidden = false
            mike = 0
        }else{
            elPana.isHidden = true
            
        }
    }
    
    func nuevoDia(){
        var esteDia = dias(carne: 0, vegetal: 0, leche: 0, grasa: 0, fruta: 0, agua: 0, leguminosa: 0, azucar: 0, cereales: 0, dia: fecha.text!)
        misDias.append(esteDia)
        buscaDia()
        
    }
    func desAsigna(){
        //banderas
        fca = 0
        fv = 0
        flegu = 0
        faz = 0
        fce = 0
        fg = 0
        ff = 0
        fag = 0
        fleche = 0
        //botones
        btCarne.setImage(carne, for: .normal)
        btVegetales.setImage(vegetales, for: .normal)
        btLeguminosas.setImage(leguminosas, for: .normal)
        btAzucar.setImage(azucar, for: .normal)
        btCereal.setImage(cereal, for: .normal)
        btFrutas.setImage(frutas, for: .normal)
        btGrasa.setImage(grasa, for: .normal)
        btLacteos.setImage(lacteos, for: .normal)
        btAgua.setImage(agua, for: .normal)
        //colores
        vwAzucar.backgroundColor = colorTmp
        vwFrutas.backgroundColor = colorTmp
        vwLeguminosas.backgroundColor  = colorTmp
        vwLacteos.backgroundColor = colorTmp
        vwAgua.backgroundColor = colorTmp
        vwCereales.backgroundColor = colorTmp
        vwCarne.backgroundColor = colorTmp
        vwVegetales.backgroundColor = colorTmp
        vwGrasas.backgroundColor = colorTmp
    }
    
    func buscaDia(){
        var tmp = 0
        for n in misDias {
            print(n.dia)
            if n.dia == fecha.text!{
                lblLeche.text = String(n.leche)
                lblAgua.text = String(n.agua)
                lblFrutas.text = String(n.fruta)
                lblGrasas.text = String(n.grasa)
                lblCereales.text = String(n.cereales)
                lblAzucar.text = String(n.azucar)
                lblCarne.text = String(n.carne)
                lblVegetales.text = String(n.vegetal)
                lblLeguminosas.text = String(n.leguminosa)
                tmp = 1
                //MARK:-PIE CHARTS PARTE 2
                //Vegetal
                maxV = Double(metaVegetales)
                maxvegetales = maxV - Double(n.vegetal)
                if maxvegetales < 0{
                    maxvegetales = 0
                }
                if maxvegetales > maxV{
                    maxvegetales = Double(metaVegetales)
                }
                VegetalesData.value = Double(n.vegetal)
                VegetalesMaxData.value = maxvegetales
                VegetalesDataEntries = [VegetalesMaxData,VegetalesData]
                //Proteina
                maxP = Double(metaCarne)
                maxproteina = maxP - Double(n.carne)
                if maxproteina < 0{
                    maxproteina = 0
                }
                if maxproteina > maxP{
                    maxproteina = Double(metaCarne)
                }
                ProteinaData.value = Double(n.carne)
                ProteinaMaxData.value = maxproteina
                ProteinaDataEntries = [ProteinaMaxData,ProteinaData]
                
                //Azucar
                maxA = Double(metaAzucar)
                maxazucar = maxA - Double(n.azucar)
                               if maxazucar < 0{
                                   maxazucar = 0
                               }
                if maxazucar > maxA{
                    maxazucar = Double(metaAzucar)
                }
                AzucarData.value = Double(n.azucar)
                AzucarMaxData.value = maxazucar
                AzucarDataEntries = [AzucarMaxData,AzucarData]
                
                //Lacteos
                maxL = Double(metaLacteo)
                maxlacteos = maxL - Double(n.leche)
                if maxlacteos < 0{
                    maxlacteos = 0
                }
                if maxlacteos > maxL{
                    maxlacteos = Double(metaLacteo)
                }
                LacteosData.value = Double(n.leche)
                LacteosMaxData.value = maxlacteos
                LacteosDataEntries = [LacteosMaxData,LacteosData]
                
                //Fruta
                maxF = Double(metaFrutas)
                maxfruta = maxF - Double(n.fruta)
                if maxfruta < 0{
                    maxfruta = 0
                }
                if maxfruta > maxF{
                    maxfruta = Double(metaFrutas)
                }
                FrutaData.value = Double(n.fruta)
                FrutaMaxData.value = maxfruta
                FrutaDataEntries = [FrutaMaxData,FrutaData]
                
                //Leguminosas
                maxLe = Double(metaLeguminosas)
                maxleguminosas = maxLe - Double(n.leguminosa)
                if maxleguminosas < 0{
                    maxleguminosas = 0
                }
                if maxleguminosas > maxLe{
                    maxleguminosas = Double(metaLeguminosas)
                }
                LeguminosasData.value = Double(n.leguminosa)
                LeguminosasMaxData.value = maxleguminosas
                LeguminosasDataEntries = [LeguminosasMaxData,LeguminosasData]
                
                //Grasas
                maxG = Double(metaGrasas)
                maxgrasas = maxG - Double(n.grasa)
                if maxgrasas < 0{
                    maxgrasas = 0
                }
                if maxgrasas == -1 || maxgrasas > maxG{
                    maxgrasas = Double(metaGrasas)
                }
                GrasasData.value = Double(n.grasa)
                GrasasMaxData.value = maxgrasas
                GrasasDataEntries = [GrasasMaxData,GrasasData]
                
                //Cereal
                maxC = Double(metaCereales)
                maxcereal = maxC - Double(n.cereales)
                if maxcereal < 0{
                    maxcereal = 0
                }
                if maxcereal == -1 || maxcereal > maxC{
                    maxcereal = Double(metaCereales)
                }
                CerealData.value = Double(n.cereales)
                CerealMaxData.value = maxcereal
                CerealDataEntries = [CerealMaxData,CerealData]
                
                updateChart()
                
                break
            }
        }
        if tmp == 0 {
                nuevoDia()
        }
    }
    
    func updateChart(){
        //Vegetal
        let vegetalesDataSet = PieChartDataSet(entries: VegetalesDataEntries, label: nil)
        vegetalesDataSet.selectionShift = 0
        vegetalesDataSet.drawValuesEnabled = false
        let vegetalChartData = PieChartData(dataSet: vegetalesDataSet)
        
        var colorsveg = [UIColor.red.withAlphaComponent(0), sigue]
        
        if Int(lblVegetales.text!)! > Int(metaVegetales)  {
            colorsveg = [UIColor.red.withAlphaComponent(0), alerta]
        }
        vegetalesDataSet.colors = colorsveg
        pieChartVerdura.data = vegetalChartData
        pieChartVerdura.holeRadiusPercent = 0.8
        pieChartVerdura.legend.enabled = false
        
        //Proteina
        let proteinaDataSet = PieChartDataSet(entries: ProteinaDataEntries, label: nil)
        proteinaDataSet.selectionShift = 0
        proteinaDataSet.drawValuesEnabled = false
        let proteinaChartData = PieChartData(dataSet: proteinaDataSet)
        var coloresprot = [UIColor.red.withAlphaComponent(0), sigue]
        if Int(lblCarne.text!)! > Int(metaCarne)  {
            coloresprot = [UIColor.red.withAlphaComponent(0), alerta]
        }
        proteinaDataSet.colors = coloresprot
        pieChartProteina.data = proteinaChartData
        pieChartProteina.holeRadiusPercent = 0.8
        pieChartProteina.legend.enabled = false
        
        //Azucar
        let azucarDataSet = PieChartDataSet(entries: AzucarDataEntries, label: nil)
        azucarDataSet.selectionShift = 0
        azucarDataSet.drawValuesEnabled = false
        let AzucarChartData = PieChartData(dataSet: azucarDataSet)
        var colorsAz = [UIColor.red.withAlphaComponent(0), sigue]
        if Int(lblAzucar.text!)! > Int(metaAzucar)  {
            colorsAz = [UIColor.red.withAlphaComponent(0), alerta]
        }
        azucarDataSet.colors = colorsAz
        pieChartAzucar.data = AzucarChartData
        pieChartAzucar.holeRadiusPercent = 0.8
        pieChartAzucar.legend.enabled = false
        
        //Lacteos
        let lacteosDataSet = PieChartDataSet(entries: LacteosDataEntries, label: nil)
        lacteosDataSet.selectionShift = 0
        lacteosDataSet.drawValuesEnabled = false
        let LacteosChartData = PieChartData(dataSet: lacteosDataSet)
        var colorslac = [UIColor.red.withAlphaComponent(0),sigue]
        if Int(lblLeche.text!)! > Int(metaLacteo)  {
            colorslac = [UIColor.red.withAlphaComponent(0), alerta]
        }
        lacteosDataSet.colors = colorslac
        pieChartLacteos.data = LacteosChartData
        pieChartLacteos.holeRadiusPercent = 0.8
        pieChartLacteos.legend.enabled = false
        
        //Fruta
        let frutaDataSet = PieChartDataSet(entries: FrutaDataEntries, label: nil)
        frutaDataSet.selectionShift = 0
        frutaDataSet.drawValuesEnabled = false
        let FrutaChartData = PieChartData(dataSet: frutaDataSet)
        var colorsfrut = [UIColor.red.withAlphaComponent(0), sigue]
        if Int(lblFrutas.text!)! > Int(metaFrutas)  {
            colorsfrut = [UIColor.red.withAlphaComponent(0), alerta]
        }
        frutaDataSet.colors = colorsfrut
        pieChartFrutas.data = FrutaChartData
        pieChartFrutas.holeRadiusPercent = 0.8
        pieChartFrutas.legend.enabled = false
        
        //Leguminosas
        let leguminosasDataSet = PieChartDataSet(entries: LeguminosasDataEntries, label: nil)
        leguminosasDataSet.selectionShift = 0
        leguminosasDataSet.drawValuesEnabled = false
        let LeguminosasChartData = PieChartData(dataSet: leguminosasDataSet)
        var colorsleg = [UIColor.red.withAlphaComponent(0), sigue]
        if Int(lblLeguminosas.text!)! > Int(metaLeguminosas)  {
            colorsleg = [UIColor.red.withAlphaComponent(0), alerta]
        }
        leguminosasDataSet.colors = colorsleg
        pieChartLeguminosas.data = LeguminosasChartData
        pieChartLeguminosas.holeRadiusPercent = 0.8
        pieChartLeguminosas.legend.enabled = false
        
        //Grasas
        let grasasDataSet = PieChartDataSet(entries: GrasasDataEntries, label: nil)
        grasasDataSet.selectionShift = 0
        grasasDataSet.drawValuesEnabled = false
        let GrasasChartData = PieChartData(dataSet: grasasDataSet)
        var colorsgras = [UIColor.red.withAlphaComponent(0), sigue]
        if Int(lblGrasas.text!)! > Int(metaGrasas)  {
            colorsgras = [UIColor.red.withAlphaComponent(0), alerta]
        }
        grasasDataSet.colors = colorsgras
        pieChartGrasas.data = GrasasChartData
        pieChartGrasas.holeRadiusPercent = 0.8
        pieChartGrasas.legend.enabled = false
        
        //Cereal
        let cerealDataSet = PieChartDataSet(entries: CerealDataEntries, label: nil)
        cerealDataSet.selectionShift = 0
        cerealDataSet.drawValuesEnabled = false
        let CerealChartData = PieChartData(dataSet: cerealDataSet)
        var colorscer = [UIColor.red.withAlphaComponent(0), sigue]
        if Int(lblCereales.text!)! > Int(metaCereales)  {
            colorscer = [UIColor.red.withAlphaComponent(0), alerta]
        }
        cerealDataSet.colors = colorscer
        pieChartCereales.data = CerealChartData
        pieChartCereales.holeRadiusPercent = 0.8
        pieChartCereales.legend.enabled = false
        
    }
    
    func uno(n : Int) {
        if fca == 1 {
            if n == -1 && Int(lblCarne.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        print(f.dia)
                        f.carne += n
                        if n == 1 {
                            if 0 < maxproteina{
                                maxproteina -= 1
                            }
                        }
                        if n == -1{
                            if f.carne < Int(maxP){
                                maxproteina += 1
                            }
                        }
                        buscaDia()
                        guardarDias()
                        break
                    }
                }
            }
        }
        if fv == 1 {
            if n == -1 && Int(lblVegetales.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.vegetal += n
                        if n == 1 {
                            if 0 < maxvegetales{
                                maxvegetales -= 1
                            }
                        }
                        if n == -1{
                            if f.vegetal < Int(maxV){
                                maxvegetales += 1
                            }
                        }
                        buscaDia()
                    }
                }
                
            }
            
        }
        if flegu == 1 {
            if n == -1 && Int(lblLeguminosas.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.leguminosa += n
                        if n == 1 {
                            if 0 < maxleguminosas{
                                maxleguminosas -= 1
                            }
                        }
                        if n == -1{
                            if f.leguminosa < Int(maxLe){
                                maxleguminosas += 1
                            }
                        }
                        buscaDia()
                    }
                }
                
            }
        }
        if faz == 1 {
            if n == -1 && Int(lblAzucar.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.azucar += n
                        if n == 1 {
                            if 0 < maxazucar{
                                maxazucar -= 1
                            }
                        }
                        if n == -1{
                            if f.azucar < Int(maxA){
                                maxazucar += 1
                            }
                        }
                        buscaDia()
                    }
                }
            }
        }
        if fce == 1 {
            if n == -1 && Int(lblCereales.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.cereales += n
                        if n == 1 {
                            if 0 < maxcereal{
                                maxcereal -= 1
                            }
                        }
                        if n == -1{
                            if f.cereales < Int(maxC){
                                maxcereal += 1
                            }
                        }
                        buscaDia()
                    }
                }
                
            }
        }
        if fg == 1 {
            if n == -1 && Int(lblGrasas.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.grasa += n
                        if n == 1 {
                            if 0 < maxgrasas{
                                maxgrasas -= 1
                            }
                        }
                        if n == -1{
                            if f.grasa < Int(maxG){
                                maxgrasas += 1
                            }
                        }
                        buscaDia()
                    }
                }
                
            }
        }
        if ff == 1 {
            if n == -1 && Int(lblFrutas.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.fruta += n
                        if n == 1 {
                            if 0 < maxfruta{
                                maxfruta -= 1
                            }
                        }
                        if n == -1{
                            if f.fruta < Int(maxF){
                                maxfruta += 1
                            }
                        }
                        buscaDia()
                    }
                }
                
            }
        }
        if fag == 1 {
            if n == -1 && Int(lblAgua.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.agua += n * 250
                        buscaDia()
                    }
                }
                
            }
                
        }
        if fleche == 1 {
            if n == -1 && Int(lblLeche.text!)! == 0  {
                
            }else{
                for f in misDias {
                    if f.dia == fecha.text!{
                        f.leche += n
                        if n == 1 {
                            if 0 < maxlacteos{
                                maxlacteos -= 1
                            }
                        }
                        if n == -1{
                            if f.leche < Int(maxL){
                                maxlacteos += 1
                            }
                        }
                        buscaDia()
                    }
                }
                
            }

        }
    }
    
    
    @IBOutlet weak var btCarne: UIButton!
    @IBOutlet weak var btVegetales: UIButton!
    @IBOutlet weak var btLeguminosas: UIButton!
    @IBOutlet weak var btAzucar: UIButton!
    @IBOutlet weak var btCereal: UIButton!
    @IBOutlet weak var btFrutas: UIButton!
    @IBOutlet weak var btGrasa: UIButton!
    @IBOutlet weak var btLacteos: UIButton!
    @IBOutlet weak var btAgua: UIButton!
    
    var carne = UIImage(named: "carne.png")
    var vegetales = UIImage(named: "vegetable.png")
    var leguminosas = UIImage(named: "chicharos.png")
    var azucar = UIImage(named: "caramelo.png")
    var cereal = UIImage(named: "cereales.png")
    var frutas = UIImage(named: "fruit.png")
    var grasa = UIImage(named: "grasa.png")
    var lacteos = UIImage(named: "leche.png")
    var agua = UIImage(named: "agua.png")
    
    @IBAction func Carne(_ sender: UIButton) {
        desAsigna()
        let carnedel = UIImage(named: "carne-2.png")
        btCarne.setImage(carnedel, for: .normal)
        fca = 1
        vwCarne.backgroundColor = UIColor(red: 163/255, green: 137/255, blue: 254/255, alpha: 1)
        
        
    }
    
    @IBAction func Vegetales(_ sender: UIButton) {
        desAsigna()
        let vegetaldel = UIImage(named: "vegetable-2.png")
        btVegetales.setImage(vegetaldel, for: .normal)
        fv = 1
        vwVegetales.backgroundColor = UIColor(red: 69/255, green: 162/255, blue: 100/255, alpha: 1)
        
    }
    
    @IBAction func Azucar(_ sender: UIButton) {
        desAsigna()
        let azucardel = UIImage(named: "caramelo-2.png")
        btAzucar.setImage(azucardel, for: .normal)
        faz = 1
        vwAzucar.backgroundColor = UIColor(red: 191/255, green: 191/255, blue: 219/255, alpha: 1)

    }
    
    @IBAction func leguminosas(_ sender: UIButton) {
        desAsigna()
        let del = UIImage(named: "chicharos-2.png")
        btLeguminosas.setImage(del, for: .normal)
        flegu = 1
        vwLeguminosas.backgroundColor = UIColor(red: 158/255, green: 162/255, blue: 247/255, alpha: 1)

    }
    
    @IBAction func cereales(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "cereales-2.png")
        btCereal.setImage(del, for: .normal)
        fce = 1
        vwCereales.backgroundColor = UIColor(red: 238/255, green: 226/255, blue: 124/255, alpha: 1)

    }
    
    @IBAction func fruta(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "fruit-2.png")
        btFrutas.setImage(del, for: .normal)
        ff = 1
        vwFrutas.backgroundColor = UIColor(red: 235/255, green: 112/255, blue: 143/255, alpha: 1)

    }
    
    @IBAction func leche(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "leche-2.png")
        btLacteos.setImage(del, for: .normal)
        fleche = 1
        vwLacteos.backgroundColor = UIColor(red: 162/255, green: 216/255, blue: 251/255, alpha: 1)
    }
    
    @IBAction func grasas(_ sender: UIButton) {
        desAsigna()
        let del = UIImage(named: "grasa-2.png")
        btGrasa.setImage(del, for: .normal)
        fg = 1
        vwGrasas.backgroundColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)

    }
    
    @IBAction func agua(_ sender: Any) {
        desAsigna()
        let del = UIImage(named: "agua-2.png")
        btAgua.setImage(del, for: .normal)
        fag = 1
        vwAgua.backgroundColor = UIColor(red: 81/255, green: 134/255, blue: 236/255, alpha: 1)
        
    }
    
    @IBAction func mas(_ sender: UIButton) {
        uno(n: 1)
    }
    
    @IBAction func menos(_ sender: UIButton) {
        uno(n: -1)
    }
    
    
    
    @IBAction func diaMas(_ sender: Any) {
        date = date.addingTimeInterval(86400)
        guardarDias()
        obtenDia()
        buscaDia()
        desAsigna()
    }
    
    @IBAction func diaMenos(_ sender: Any) {
        date = date.addingTimeInterval(-86400)
        guardarDias()
        obtenDia()
        buscaDia()
        desAsigna()
    }
    func obtenDia(){
        let dia: DateFormatter = DateFormatter()
        dia.dateFormat = "MMM dd, yyyy"
        fecha.text = dia.string(from: date)
    }
    
    //MARK: - Codable
    func dataFileURL () -> URL {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("dias.plist")
        print(pathArchivo.path)
        return pathArchivo
    }
    
    @IBAction func guardarDias(){
        do {
            let data = try PropertyListEncoder().encode(misDias)
            try data.write(to: dataFileURL())
        }catch{
            print("Error al guardar los datos")
        }
    }
    
    func obtenerDias(){
        misDias.removeAll()
        do{
            let data = try Data.init(contentsOf: dataFileURL())
            misDias = try PropertyListDecoder().decode([dias].self, from: data)
        }catch{
            print("error al cargar los empleados")
        }
        obtenDia()
    }
    
    
    
}

