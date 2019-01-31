//
//  Resources.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 03/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit


class Resources: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var selected:[String] = []
    var contenidoCeldas = ["Serie de ejercicios","Asesorías","Taller de ejercicios","Reglamentos","Programa de asignaturas","Conferencias","Manual de prácticas","Exámenes pasados resueltos","Guía de reinscripción"]
    var arregloImagenes = ["hw","aseso","taller","reglas","programa","keyn","pract","test","guia"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        let image = UIImage(named: arregloImagenes[indexPath.row])
        celda.imageView!.image = image
        celda.detailTextLabel?.font = UIFont(name:"Arial-Bold", size: 14.0)
        celda.backgroundColor = .clear
        return celda
    }
    func getTitlee(inter:Int) -> String {
        return contenidoCeldas[inter]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 8 {
            PDFDirecto.GlobalVariable.myString = 0
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 1 {
            PDFDirecto.GlobalVariable.myString = 1
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        };if indexPath.row != 8 && indexPath.row != 1 {
            self.performSegue(withIdentifier: "RecursoSelected", sender: [indexPath.row,0])
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RecursoSelected"{
            (segue.destination as! RecursoSeleccionado).opcion = sender as? [Int]
        }
    }
    @IBOutlet weak var Extras: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Extras.backgroundColor = .clear
        Extras.delegate = self
        Extras.dataSource = self
        navigationController?.navigationBar.barStyle = .black
    }
}
