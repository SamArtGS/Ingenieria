//
//  Carreras.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 22/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class Carreras: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var carreras:[String] = ["Ingeniería civil","Ingeniería geomática","Ingeniería ambiental","Ingeniería eléctrica electrónica","Ingeniería en computación","Ingeniería en telecomunicaciones","Ingeniería geológica","Ingeniería geofísica","Ingeniería petrolera","Ingeniería de minas y metalurgia","Ingeniería mecánica","Ingeniería industrial","Ingeniería mecatrónica","Ingeniería en sistemas biomédicos"]
    var arregloImagenCarreras:[String] = ["civil","geomatica","ambiental","electrica","computacion","telecomunicaciones","geologica","geofisica","petrolera","minas","mecanica","industrial","mecatronica","sistemasmedicos"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carreras.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
        cell.textLabel?.text = carreras[indexPath.row]
        let image = UIImage(named: arregloImagenCarreras[indexPath.row])
        cell.imageView!.image = image
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"Papa")
        self.navigationController?.pushViewController(viewTable!, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
