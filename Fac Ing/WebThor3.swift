//
//  WebThor3.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 16/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class WebThor3: UIViewController,UIWebViewDelegate{
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una red de datos móviles", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
            
        })
        self.present(alert, animated: true)
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"Regresar")
        self.navigationController?.pushViewController(viewTable!, animated: true)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView){
        Indicador.startAnimating()
    }
    @IBOutlet var Indicador: UIActivityIndicatorView!
    func webViewDidFinishLoad(_ webView: UIWebView){
        Indicador.stopAnimating()
    }
    @IBOutlet var WebView: UIWebView!
    override func viewDidLoad() {
        Indicador.hidesWhenStopped = true
        super.viewDidLoad()
        let urs = URL(string: "https://thor.fi-a.unam.mx/inscripciones/horarios/asignatura")
        let urlRequest = URLRequest(url: urs!)
        WebView.loadRequest(urlRequest)
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
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
