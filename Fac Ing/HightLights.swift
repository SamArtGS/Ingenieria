//
//  HightLights.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 13/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class HightLights: UIViewController {
    @IBOutlet var Nombre: UITextView!
    @IBOutlet var Imagen: UIImageView!
    @IBOutlet var textoRep: UITextView!
    @IBOutlet var Lugar: UITextView!
    
    struct GlobalVariable{
        static var recibido = Int()
    }
    
    @IBAction func Volver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var Nombres:[String] = ["La Leonardita","Puente de alta resistencia","Torre de Ingeniería","Laboratorio de Computación","Biblioteca Enrique Rivero Borrel","Alberca Olímpica","Orquesta Sinfónica de Minería"]
    var lugares:[String] = ["Anexo de la Facultad de Ingeniería - UNAM","Edificio principal de la Facultad de Ingeniería - UNAM","Instituto de Ingeniería - UNAM","Anexo de la Facultad de Ingeniería - UNAM","Anexo de la Facultad de Ingeniería - UNAM","Área deportiva - UNAM", "Sala Nezahualcoyotl"]
    var imagenes:[String] = ["img1","img7","img8","img10","bibliotecaa","alber","img14"]
    var imagenB:[String] = ["img1","pasillo","ingel","img10","img11","img13","img14"]
    var textos:[String] = [""]
    override func viewWillAppear(_ animated: Bool) {
        Nombre.text = Nombres[HightLights.GlobalVariable.recibido]
        Lugar.text = lugares[HightLights.GlobalVariable.recibido]
        Imagen.image = UIImage(named: imagenes[HightLights.GlobalVariable.recibido])
        Background.image = UIImage(named: imagenB[HightLights.GlobalVariable.recibido])
    }
    override func viewDidLoad() {
        Imagen.layer.cornerRadius = 25
        Imagen.clipsToBounds = true
        textoRep.text = "Básicamente se podría definir como la mineralización de todos los árboles, plantas, fauna animal etc existentes en ese ecosistema durante miles años, provocando bancos o depósitos de estos materiales en los subsuelos de algunas zonas del mundo.Y es a partir de los cataclismos, plegamientos y fallas geológicas que se produjeron  hace 35millones de años, que los Lignitos que llevaban unos 80 millones de años en proceso de mineralización a diversas profundidades emergen, y algunos quedan en la nueva superficie del terreno, cambiando los parámetros de presión y calor, por los de humedad y oxigenación, y como dichos Lignitos todavía no estaban bien mineralizados, pudieron comenzar un proceso de humificación natural hasta trasformar el 100% de su materia orgánica en ácidos húmicos de la más alta calidad. En el caso particular de nuestras minas en la “Formación de Escucha” en la provincia de Teruel (Aragón-España), los Lignitos, que se formaron a  nivel del mar, hoy día están en niveles entre 600 y 1.200 m.s.n.m., y con plegamientos y fallas geológicas de todos tipos, y únicamente los Lignitos que quedaron cerca de la superficie pudieron transformarse en Leonardita, tal y como se muestra en la foto siguiente,  donde  la  Leonardita  es  el  producto  que  había  en  los  8/10  metros  explotados,  encima  del banco del carbón Lignito que está preparado para explotar para uso térmico."
        
        super.viewDidLoad()
    }
    @IBOutlet var Background: UIImageView!
    //texto begin in the middle
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textoRep.setContentOffset(CGPoint.zero, animated: false)
    }

}
