//
//  WebThor2.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 13/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class WebThor2: UIViewController,UIWebViewDelegate{
    /*func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"Facultad")
        self.navigationController?.pushViewController(viewTable!, animated: true)
        
        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una red de datos móviles", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
            
        })
        self.present(alert, animated: true)
        
    }*/

    @IBOutlet var web: UIWebView!
    override func viewDidLoad() {
        web.delegate = self
        super.viewDidLoad()
        let urs = URL(string: "http://www.ingenieria.unam.mx")
        let urlRequest = URLRequest(url: urs!)
        web.loadRequest(urlRequest)
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
    }

}
