//
//  PDFDirecto.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 16/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class PDFDirecto: UIViewController,UIWebViewDelegate{
    
    @IBOutlet var Indicator: UIActivityIndicatorView!

    func webViewDidStartLoad(_ webView: UIWebView){
        Indicator.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView){
        Indicator.stopAnimating()
    }

    struct GlobalVariable{
        static var myString = Int()
    }
    var links:[String] = ["guia","Asesoria","croquis","taller","proteccion","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Civil/2016/mapa_curricular_civil_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Geomatica/2016/mapa_curricular_geomatica_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Computacion/2016/mapa_curricular_computacion_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Electrica_Electronica/2016/mapa_curricular_electrica_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Telecomunicaciones/2016/mapa_curricular_telecomunicaciones_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Geofisica/2016/mapa_curricular_geofisica_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Geologica/2016/mapa_curricular_geologica_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Minas_y_Metalurgia/2016/mapa_curricular_minas_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Petrolera/2016/mapa_curricular_petrolera_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Ambiental/2020/mapa_curricular_ambiental_2020.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Mecanica/2016/mapa_curricular_mecanica_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Industrial/2016/mapa_curricular_industrial_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/Mecatronica/2016/mapa_curricular_mecatronica_2016.pdf","http://www.ingenieria.unam.mx/programas_academicos/licenciatura/sistemas_biomedicos/2016/mapa_curricular_sistemas_biomedicos_2016.pdf"]
    @IBOutlet var Visualizar: UIWebView!

    
    
    override func viewDidLoad() {
        Indicator.hidesWhenStopped = true
        if GlobalVariable.myString == 1 || GlobalVariable.myString == 3 {
        do{
            guard let filePath = Bundle.main.path(forResource: links[PDFDirecto.GlobalVariable.myString], ofType: "html")
                else { return }
            let contents =  try String(contentsOfFile: filePath, encoding: .utf8)
            let baseUrl = URL(fileURLWithPath: filePath)
            Visualizar.loadHTMLString(contents as String, baseURL: baseUrl)
        }
        catch {
            print ("File HTML error")
        }
        Visualizar.scalesPageToFit = true
        super.viewDidLoad()
        }
        if GlobalVariable.myString == 5 || GlobalVariable.myString == 6 || GlobalVariable.myString == 7 || GlobalVariable.myString == 8 || GlobalVariable.myString == 9 || GlobalVariable.myString == 10 || GlobalVariable.myString == 11 || GlobalVariable.myString == 12 || GlobalVariable.myString == 13 || GlobalVariable.myString == 14 || GlobalVariable.myString == 15 || GlobalVariable.myString == 16 || GlobalVariable.myString == 17 || GlobalVariable.myString == 18 || GlobalVariable.myString == 19 {
            let url : URL! = URL(string: links[PDFDirecto.GlobalVariable.myString])
            Visualizar.loadRequest(URLRequest(url: url as URL) as URLRequest)
            Visualizar.scalesPageToFit = true
            super.viewDidLoad()
        }
        if GlobalVariable.myString == 0 || GlobalVariable.myString == 2 || GlobalVariable.myString == 4{
                    let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: links[PDFDirecto.GlobalVariable.myString], ofType: "pdf")!)
                    let datosPdf = try? Data(contentsOf: direccionPdf)
                    Visualizar.load(datosPdf!, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: direccionPdf)
                Visualizar.scalesPageToFit = true
                super.viewDidLoad()
    }
        

}
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.hidesBarsOnTap = true
        self.navigationController?.navigationBar.barStyle = .black
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AppDelegate.OrientationManager.landscapeSupported = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppDelegate.OrientationManager.landscapeSupported = false
        //The code below will automatically rotate your device's orientation when you exit this ViewController
        let orientationValue = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(orientationValue, forKey: "orientation")
    }
}
