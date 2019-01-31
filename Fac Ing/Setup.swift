//
//  Setup.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 29/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit

class Setup: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let config:[String] = ["Acerca de la aplicación","","Sugerencias para el desarrollador","Página Oficial de la UNAM","Página Oficial de la Facultad de Ingeniería","La Gaceta UNAM","","","              Redes Sociales - FI","Facebook","Twitter","","Notificaciones","Mapa de la App"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return config.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"Celulosa")
        celda.textLabel?.text = config[indexPath.row]
        return celda
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barStyle = .black
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
