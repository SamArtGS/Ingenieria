//
//  WebThor.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 08/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class WebThor:UIViewController,UIWebViewDelegate{
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet){
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"Facultad")
        self.navigationController?.pushViewController(viewTable!, animated: true)
        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una red de datos móviles", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
            
        })
        self.present(alert, animated: true)
        }
    }
    var link:String?
    @IBOutlet weak var ShowSIAE: UIWebView!
    override func viewDidLoad() {
        automaticallyAdjustsScrollViewInsets = false
        ShowSIAE.delegate = self
        let urs = URL(string: "https://www.unam.mx")
        var urlRequest = URLRequest(url: urs!)
        urlRequest.cachePolicy = .returnCacheDataElseLoad
        ShowSIAE.loadRequest(urlRequest)
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
    }
}
