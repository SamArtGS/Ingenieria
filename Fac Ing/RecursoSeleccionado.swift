//
//  RecursoSeleccionado.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 04/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit
class RecursoSeleccionado:UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate{
    @IBOutlet var tabla: UITableView!
    @IBOutlet var Searching: UISearchBar!
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.Searching.endEditing(true)
        self.dismissKeyboard()
    }
    
    var received:Int?
    var isSearching:Bool = false
    
    var filtrados:[String] = []
    var contenidoCeldasss:[String] = ["Serie de ejercicios","Asesorías","Taller de ejercicios","Reglamentos","Programa de asignaturas","Conferencias","Manual de prácticas","Exámenes pasados resueltos","Guías de reinscripción"]
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //Continuará
    }
    var table0:[String] = [
                           "Álgebra","Álgebra","Álgebra","Álgebra","Álgebra","Álgebra",/* 6 */
        
                           "Álgebra lineal","Álgebra lineal","Álgebra lineal","Álgebra lineal","Álgebra lineal", /* 5 */
        
                           "Cálculo diferencial","Cálculo diferencial","Cálculo diferencial","Cálculo diferencial","Cálculo diferencial","Cálculo diferencial", /* 6 *F* */
                           
                           "Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica", /* 7 */
                           
                           "Geometría analítica","Geometría analítica","Geometría analítica","Geometría analítica","Geometría analítica", /* 5 */
                           
                           "Cálculo integral","Cálculo integral","Cálculo integral","Cálculo integral", /* 4 */
                           
                           "Cálculo vectorial","Cálculo vectorial","Cálculo vectorial","Cálculo vectorial", /* 4 */
        
                           "Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas", /* 8 */
                           
                           "Análisis numérico","Análisis numérico","Análisis numérico","Análisis numérico","Análisis numérico","Análisis numérico", /* 6 */
                           
                           "Ecuaciones diferenciales","Ecuaciones diferenciales","Ecuaciones diferenciales","Ecuaciones diferenciales","Ecuaciones diferenciales", /* 5 */
                           
                           "Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo", /* 10  SERIES Y EJERCICIOS SON DISTINTOS*/
                           
                           "Física", /* 1 Cuaderno de ejercicios correspondiente*/
                           
                           "Física experimental", /* 1 Cuaderno de ejercicios correspondiente*/
                           
                           "Fundamentos de física", /* 1 Cuaderno de ejercicios correspondiente*/
                           
                           "Química","Química","Química","Química","Química","Química","Química","Química", /* 8 */
                           
                           "F. de termo y electro","F. de termo y electro","F. de termo y electro","F. de termo y electro", /* 4 */
                           
                           "S. termo y electro","S. termo y electro","S. termo y electro","S. termo y electro", /* 4 */
                           
                           "Cinemática y dinámica","Cinemática y dinámica","Cinemática y dinámica","Cinemática y dinámica","Cinemática y dinámica", /* 5 */
                           
                           "Estática","Estática","Estática","Estática","Estática","Estática", /* 6 */
                           
                           "Probabilidad","Probabilidad","Probabilidad","Probabilidad","Probabilidad", /* 5 */
                           
                           "Estadística","Estadística","Estadística","Estadística","Estadística","Estadística", /* 6 */
    ]
    let NumSerie:[String] = ["Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Serie VII",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Serie VII","Serie VIII",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Ejercicio I","Ejercicio II","Ejercicio III","Ejercicio IV",
                             "Completo",
                             "Completo",
                             "Completo",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Serie VII","Serie VIII",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                            ]
    //Tablas de contenidos distintos
    let table1:[String] = [""] //ASESORIAS
    let table2:[String] = [""] //Taller de Ejercicios
    
    
    let table3:[String] = ["Laboratorios y talleres","Defensoría de los derechos universitarios","Reglamento general de inscripciones","Reglamento general de exámenes","Medidas de protección a los no fumadores","Reglamento de opciones de titulación","Instructivo para la programación de examen profesional","Instructivo para ceremonia de recepción profesional"]//Reglamentos
    
    
    let table4:[String] = ["Álgebra","Álgebra lineal","Cálculo diferencial","Cálculo y geometría analítica","Geometría analítica","Cálculo integral","Cálculo vectorial","Matemáticas avanzadas","Análisis numérico","Ecuaciones diferenciales","Electricidad y magnetismo","Física","Física experimental","Fundamentos de física","Química","F. de termo y electro","S. termo y electro","Cinemática y dinámica","Estática","Probabilidad","Estadística"] //Programa de asignaturas
    let table5:[String] = ["Arenas"] //VIDEO TABLE VIEW
    let table6:[String] = ["Manual de Química"] //Manual de prácticas
    let table7:[String] = ["Cálculo Vectorial"] //Exámenes pasados resueltos
    let table8:[String] = ["Nada"] //Guía de inscripción
    
    
    var opcion:[Int]?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch opcion![0] {
        case 0:
            return table0.count
        case 1:
            return table1.count
        case 2:
            return table2.count
        case 3:
            return table3.count
        case 4:
            return table4.count
        case 5:
            return table5.count
        case 6:
            return table6.count
        case 7:
            return table7.count
        case 8:
            return table8.count
        default:
            return table0.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch opcion![0] {
        case 0:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.value1,reuseIdentifier:"ejem")
            celda.textLabel?.text = table0[indexPath.row]
            
            celda.detailTextLabel?.text = NumSerie[indexPath.row]
            return celda
        case 1:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table1[indexPath.row]
            return celda
        case 2:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table2[indexPath.row]
            return celda
        case 3:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table3[indexPath.row]
            return celda
        case 4:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table4[indexPath.row]
            return celda
        case 5:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table5[indexPath.row]
            return celda
        case 6:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table6[indexPath.row]
            return celda
        case 7:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table7[indexPath.row]
            return celda
        case 8:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table8[indexPath.row]
            return celda
        default:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            celda.textLabel?.text = table0[indexPath.row]
            return celda
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        opcion![1] = indexPath.row
        self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PDFSelected"{
            (segue.destination as! PDF).opcionselected = sender as? [Int]
        }
    }
    override func viewDidLoad() {
        
        self.hideKeyboardWhenTappedAround()
        navigationController?.navigationBar.barStyle = .black
        self.title = contenidoCeldasss[opcion![0]]
        filtrados=table0
        super.viewDidLoad()
}
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
