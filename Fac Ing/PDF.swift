//
//  PDF.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 13/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class PDF: UIViewController,UIWebViewDelegate{
    var opcionselected:[Int]?
    var PDFSeries:[String] = [
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-1/TEMA1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-1/TEMA2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-1/TEMA3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-1/TEMA4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-1/TEMA5.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-1/TEMA6.pdf",
        /* Series de Álgebra */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/s1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/s2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/s3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/s4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/s5.pdf",
        /* Series  de Álgebra Lineal*/
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_5.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_6.pdf",
        /* Series de Cálculo Diferencial */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie1_Conicas.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie2_Funciones.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie3_Limites.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie4_Derivada.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie5_VariacionFunciones.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie6_AlgebraVectorial.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie7_RectaPlano.pdf",
        /* Series de Cálculo y Geometría Analítica */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie5.pdf",
        /* Series de Geometría Analítica */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie4.pdf",
        /* Series de Cálculo Integral */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/serie1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/serie2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/serie3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/Serie4.pdf",
        /* Series de Cálculo Vectorial*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/FUNCIONES.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/FUNCIONESANALITICAS.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/INTEGRACION.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/SERIEDELAURENT.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/TEOREMADELRESIDUO.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/SERIEDEFOURIER.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/INTEGRALDEFOURIER.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/TRANSFORMADADEFOURIER.pdf",
        /* Series de Matemáticas Avanzadas*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie5.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie6.pdf",
        /* Serie de Análisis Numérico */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie5.pdf",
        /* Series de Ecuaciones Diferenciales */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_1_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_2_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_3_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_4_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_5_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_6_EyM.pdf",
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_4.pdf",
        /* Series y Ejercicios de Electricidad y Magnetismo */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-F.pdf",
        /* Serie de Ejercicios de física*/
        
        "http://dcb.ingenieria.unam.mx/index.php/coordinaciones/fisica-quimica/fisica/fisica-experimental/",
        /* Serie de Ejercicios de Física Experimental */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-FF.pdf",
        /* Serie de ejercicios de fundamentos de física */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_1(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_2(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_3(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_4(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_5(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_6(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_7(2019-1).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_8(2019-1).pdf",
        /* Serie de ejercicios de Química */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie1_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie3_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/Serie4_STEM_y_FTEM.pdf",
        /*Serie de F. de termo y electro*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie1_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie3_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/Serie4_STEM_y_FTEM.pdf",
        /*Serie de S. de termo y electro*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie1Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie2Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie3Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie4Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie5Cyd.pdf",
        /*Serie de Cinemática y dinámica */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie1Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie2Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie3Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie4Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie5Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie6Estatica.pdf",
        /*Serie de Estática*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_5.pdf",
        /*Serie de Probabilidad*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_5.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_6.pdf"
        /*Serie de Estadística*/
    ]
    var PDFAsesoria:[String] = [
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        
    
    
    ]
    var PDFPAsig:[String] = [
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/planeacion2019-1/PLAN1120.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/planeacion/plan1220.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/planeacion/temario.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/planeacion/temario.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/planeacion/temario.pdf",
        "",
        "",
        "",
        
        
        ]
    
    @IBOutlet var Indicador: UIActivityIndicatorView!
    var PDFTallerEjercicios:[String] = [""]
    var PDFReglamentos:[String] = [
        "http://dcb.ingenieria.unam.mx/wp-content/uploads/Documentos/Reglamento_labTall.pdf",
        "https://www.defensoria.unam.mx/publicaciones/Gu%C3%ADa_de_derechos_UNAM_214.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/uploads/Documentos/ReglamentoGraldeInscripciones.pdf",
        "http://www.ingenieria.unam.mx/planeacion/planes/normatividadUnam/RGE.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/uploads/Documentos/NoFumadores.pdf",
        "http://servacad.ingenieria.unam.mx/_adicionales/titulacion/Reglamento_Opciones_de_Titulacion.pdf",
        "http://servacad.ingenieria.unam.mx/_adicionales/titulacion/Instructivo_Examen.pdf",
        "http://servacad.ingenieria.unam.mx/_adicionales/titulacion/Instructivo_Ceremonia.pdf",
        "",
        "",
        "",
        ""
        ]
    var PDFConferencias:[String] = [""]
    
    var PDFManuales:[String] = [""]
    var PDFExPasados:[String] = [""]
    var PDFGuias:[String] = [""]
    
    func webViewDidStartLoad(_ webView: UIWebView){
        Indicador.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView){
        Indicador.stopAnimating()
    }
    @IBOutlet var PDFView: UIWebView!
    override func viewDidLoad() {
        PDFView.delegate = self
       Indicador.hidesWhenStopped = true
        navigationController?.navigationBar.barStyle = .black
        switch opcionselected![0] {
        case 0:
            let url : NSURL! = NSURL(string: PDFSeries[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
        case 1:
            //let url : NSURL! = NSURL(string: PDFAsesoria[opcionselected![1]])
            super.viewDidLoad()
        case 2:
            let url : NSURL! = NSURL(string: PDFTallerEjercicios[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
        case 3:
            let url : NSURL! = NSURL(string: PDFReglamentos[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
        case 4:
            let url : NSURL! = NSURL(string: PDFPAsig[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
        case 5:
            let url : NSURL! = NSURL(string: PDFConferencias[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
        case 6:
            let url : NSURL! = NSURL(string: PDFManuales[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
        case 7:
            let url : NSURL! = NSURL(string: PDFExPasados[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
        case 8:
            super.viewDidLoad()
        default:
            let alert = UIAlertController(title: "Error en la conexión", message: "Error", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default) { action in
                
            })
            self.present(alert, animated: true)
            super.viewDidLoad()
        }
    }
    @IBAction func Share(_ sender: Any) {
        let Activity = UIActivityViewController(activityItems: [URL(string: PDFSeries[opcionselected![1]]) ?? "google.com"], applicationActivities: nil)
        Activity.popoverPresentationController?.sourceView = self.view
        self.present(Activity, animated: true,completion: nil)
    }
    var flag:Bool = false
    func addTapped(_ sender:UIBarButtonItem!){
        print("hola")
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una red de datos móviles", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
            
        })
        self.present(alert, animated: true)
        
    }
    
}
extension UIViewController{
    func hidebar()->Bool {
        
         let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissBar))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        return true
    }
    func showbar()->Bool{
        let taps: UITapGestureRecognizer
        taps = UITapGestureRecognizer(target: self, action: #selector(UIViewController.presBar))
        taps.cancelsTouchesInView = false
        view.addGestureRecognizer(taps)
        return false
    }
    @objc func dismissBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
        tabBarController?.tabBar.isHidden = true
    }
    @objc func presBar() {
        navigationController?.navigationBar.isHidden = false
        tabBarController?.tabBar.isHidden = false
    }
}
