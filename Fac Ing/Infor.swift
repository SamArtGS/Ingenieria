//
//  Infor.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 18/02/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class Infor: UIViewController {

    @IBOutlet var NomApp: UILabel!
    @IBOutlet var Imagen: UIImageView!
    @IBOutlet var Color: UIView!
    
    
    
    
    override func viewDidLoad()
    {
        
       
        Imagen.layer.cornerRadius = 23
        Imagen.clipsToBounds = true
        Imagen.image = UIImage(named: "ja")
        NomApp.text = "Facultad de Ingeniería"
        Subtitleapp.text = "App NO Oficial"
        What.text = "La aplicación es un pequeño proyecto para la comunidad universitaria. Fue desarrollado como pasatiempo aunque igual por aprendizaje. De parte de los desarrolladores (SAGS - JCC) agradecemos sus opiniones y esperamos que les sea una útil herramienta para su trayecto por la facultad. Próximamente vendrán nuevas características y la versión en Android (se encuentra en proceso).\n\nPRONTO: ACCESO SIN CONEXIÓN A DOCUMENTOS"
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.view.bounds
        
        gradient.colors = [UIColor.black.cgColor, UIColor.white]
        
        Color.layer.insertSublayer(gradient, at: 0)
        automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
        
    }
    @IBOutlet var Subtitleapp: UILabel!
    
    @IBOutlet var What: UITextView!
}
