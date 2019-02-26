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
        let message: String = error.localizedDescription

        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una red de datos móviles \(message)" , preferredStyle: .alert)
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
    override func viewWillDisappear(_ animated: Bool) {
    }
    @IBOutlet var WebView: UIWebView!
    override func viewDidLoad() {
        automaticallyAdjustsScrollViewInsets = false
        Indicador.hidesWhenStopped = true
        super.viewDidLoad()
        let urs = URL(string: "https://inscripciones.ingenieria.unam.mx/horarios.html")
        let urlRequest = URLRequest(url: urs!)
        WebView.loadRequest(urlRequest)
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
    }
    

}
