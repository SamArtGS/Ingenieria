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
    var contenidoCeldas = ["Serie de ejercicios","Asesorías","Taller de ejercicios","Reglamentos","Programa de asignaturas (DCB)","Conferencias","Manual de prácticas","Exámenes pasados: Finales","Exámenes pasados: Extraordinarios","Guía escolar 2019-2","Web de profesores","Guía para protección"]
    var arregloImagenes = ["hw","aseso","taller","reglas","programa","keyn","pract","test","test2","guia","webprofesor","protection"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        let image = UIImage(named: arregloImagenes[indexPath.row])
        celda.imageView!.image = image
        automaticallyAdjustsScrollViewInsets = false
        return celda
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
         navigationController?.hidesBarsOnTap = false
    }
    func getTitlee(inter:Int) -> String {
        return contenidoCeldas[inter]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 9 {
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
        }
        if indexPath.row == 2 {
                PDFDirecto.GlobalVariable.myString = 3
                let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
                self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
        if indexPath.row == 11 {
            PDFDirecto.GlobalVariable.myString = 4
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
        
        if indexPath.row != 9 && indexPath.row != 1 && indexPath.row != 2 && indexPath.row != 11{
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
