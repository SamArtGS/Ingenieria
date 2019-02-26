//
//  Carreras.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 22/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class Carreras: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var seleccionesss:[[Int]] = [[0,1],[2,3,4],[5,6,7,8,9],[10,11,12,13]]
    let seccciones:[String] = ["División de Ing. Civil y Geomática","División de Ing. Eléctrica","División de Ing. en C. de la Tierra","División de Ing. Mecánica e Industrial"]
    let images:[[String]] = [["civil","geomatica"],["computacion","electrica","telecomunicaciones"],["geofisica","geologica","minas","petrolera","ambiental"],["mecanica","industrial","mecatronica","sistemasmedicos"]]
    let config:[[String]] = [["Ingeniería Civil","Ingeniería Geomática"],["Ingeniería en Computación","Ingeniería Eléctrica Electrónica","Ingeniería en Telecomunicaciones"],["Ingeniería Geofísica","Ingeniería Geológica","Ingeniería en Minas y Metalurgia","Ingeniería Petrolera","Ingeniería Ambiental"],["Ingeniería Mecánica","Ingeniería Industrial","Ingeniería Mecatrónica","Ingeniería en Sistemas Biomédicos"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return config[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return seccciones.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return seccciones[section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
        let image = UIImage(named: images[indexPath.section][indexPath.row])
        cell.imageView!.image = image
        cell.textLabel?.text = config[indexPath.section][indexPath.row]
        return cell
        
    }
    var seled:[Int] = []
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "carrera", sender: [seleccionesss[indexPath.section][indexPath.row],indexPath.section])
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func viewDidLoad() {
        self.navigationController?.hidesBarsOnTap = false
        automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "carrera"{
            (segue.destination as! degree).selectedd = sender as? [Int]
        }
    }

}
