//
//  LabYTitulViewController.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 12/02/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class LabYTitulViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var labos:[String] = [""]
    var titulaciones:[String] = ["● Aprobadas todas las asignaturas","● 100% de créditos","● Cumplir con el requisito de idioma","● Cumplir con Servicio Social","🎓 Medios de Titulación 🎓","Tesis o Tesina y Examen Profesional","Actividad de investigación","Seminario de tesis o tesina"," Examen general de conocimientos","Total de créditos y alto nivel académico (9.5)","Trabajo profesional","Estudios de posgrado","Ampliación de conocimientos","Servicio Social","Apoyo a la docencia"]
    
    var imgLabos:[String] = [""]
    var imgTitul:[String] = [""]
    
    var descriptionLab:[String] = [""]
    var descriptionTitul:[String] = [""]
    
    var asociaciones:[String] = ["Asociación Aeroespacial de la Facultad de Ingeniería","Capítulo Estudiantil del American Concrete Institute","Capítulo Estudiantil de la Asamblea de Generaciones de la Facultad de Ingeniería","Club de Estudiantes de la American Society of Civil Engineers","Club de Robótica de la Facultad de Ingeniería","Capítulo Estudiantil del Institute of Electrical and Electronics Engineering","Centro de Negocios de Ingeniería Industrial","Cineclub de Ingeniería","Coro Ars Iovalis","Sociedad Astrómica de la Facultad de Ingeniería de la UNAM","Society Automovile Engineering","Sociedad de Alumnos Eléctricos Electrónicos","Sociedad de Alumnos de Geofísica","Sociedad de Alumnos de Ingeniería Geomática","Sociedad de Alumnos de Ingeniería Petrolera","Sociedad de Alumnos de Ingeniería en Computación","Sociedad de Alumnos de Ingeniería Mecánica","Sociedad de Alumnos de Sistemas Biomédicos","Sociedad de Alumnos de Ingeniería de Minas y Metalurgia","Sociedad de Alumnos de Telecomunicaciones de la Facultad de Ingeniería","Sociedad de Estudiantes de Ingeniería Geológica","Sociedad de Estudiantes de Ingeniería Industrial","Club de Estudiantes del Colegio de Ingenieros Civiles de México","Sociedad de Desarrollo de Videojuegos","Laboratorio de Investigación y Desarrollo de Software Libre","Programa de Tecnología en Cómputo","Laboratorio de Investigación para el Desarrollo Académico","Foto Club Ingenieros","Sociedad de Estudiantes de Ingeniería Eléctrica Electrónica","Sociedad de Ingeniería Aeronáutica y Aeroespacial","Capítulo Estudiantil de la Society of Petroleum Engineers","Sociedad de Mecatrónica de la Facultad de Ingeniería","Tuna de la Facultad de Ingeniería","Porra de Ingeniería"]
    
    struct VarGlobal {
        static var numerito = Int()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if LabYTitulViewController.VarGlobal.numerito == 1{
            return titulaciones.count
        }else{
            if LabYTitulViewController.VarGlobal.numerito == 2{
                return labos.count
            }else{
                return asociaciones.count
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let celda = tableView.dequeueReusableCell(withIdentifier: "PumpedUp") as! TableViewCell2
        if LabYTitulViewController.VarGlobal.numerito == 1{
            celda.texto.text = titulaciones[indexPath.row]
            if indexPath.row == 4 {
                celda.texto.textAlignment = .center
                celda.texto.font = UIFont.boldSystemFont(ofSize: celda.texto.font.pointSize)
            }else{
                celda.texto.textAlignment = .left
                celda.texto.font.withSize(17)
            }
        }else{
            if LabYTitulViewController.VarGlobal.numerito == 2{
                celda.texto.text = labos[indexPath.row]
                //let image = UIImage(named: imgLabos[indexPath.row])
                //celda.imageView!.image = image
                //celda.detailTextLabel?.text = descriptionLab[indexPath.row]
            }else{
                celda.texto.text = asociaciones[indexPath.row]
            }
        }
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if LabYTitulViewController.VarGlobal.numerito == 3{
            return 100
            
        }else{
            return 50
        }
    }
    @IBOutlet var tablita: UITableView!
    override func viewDidLoad() {
        if LabYTitulViewController.VarGlobal.numerito == 1{
            self.title = "Titulaciones"
        }
        if LabYTitulViewController.VarGlobal.numerito == 3{
            self.title = "Asociaciones estudiantiles"
        }
        if LabYTitulViewController.VarGlobal.numerito == 2{
            self.title = "Laboratorios"
        }
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
    }
    

}
