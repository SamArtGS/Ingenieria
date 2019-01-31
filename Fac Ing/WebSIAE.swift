//
//  WebSIAE.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 25/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit

class WebSIAE:UIViewController,UIWebViewDelegate{
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("webview did fail load with error: \(error)")
        
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
    @IBOutlet var Linking: UIActivityIndicatorView!
    let link:String = "http://www.dgae-siae.unam.mx/www_gate.php"
    @IBOutlet weak var ShowSIAE: UIWebView!
    override func viewDidLoad() {
        Indicador.hidesWhenStopped = true
        ShowSIAE.delegate = self
        let urs = URL(string: link)
        let urlRequest = URLRequest(url: urs!)
        ShowSIAE.loadRequest(urlRequest)
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
    }
}
