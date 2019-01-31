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
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error){
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"Regresar")
        self.navigationController?.pushViewController(viewTable!, animated: true)
        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una conexión", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { action in
            
        })
        self.present(alert, animated: true)
        
    }
    
    struct GlobalVariable{
        static var myString = Int()
    }
    var links:[String] = ["http://servacad.ingenieria.unam.mx/_adicionales/escolar/Guia2019-2.pdf","local","http://servacad.ingenieria.unam.mx/_adicionales/diseno/ssa/Croquis_FI.pdf"]
    @IBOutlet var Visualizar: UIWebView!

    
    
    override func viewDidLoad() {
        Indicator.hidesWhenStopped = true
        if GlobalVariable.myString==1{
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
        }else{
            
            let url : NSURL! = NSURL(string: links[PDFDirecto.GlobalVariable.myString])
            Visualizar.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            
            
            Visualizar.scalesPageToFit = true
            Visualizar.delegate = self
            Indicator.hidesWhenStopped = true
            super.viewDidLoad()
            
        }
        // Do any additional setup after loading the view.
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
