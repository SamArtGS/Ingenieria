//
//  Setup.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 29/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit
import Foundation
import MessageUI

class Setup: UIViewController,UITableViewDataSource,UITableViewDelegate,MFMailComposeViewControllerDelegate{
    func sendEmail() {
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
        composeVC.setToRecipients(["samuelarturo@icloud.com"])
        composeVC.setSubject("App Ingeniería - UNAM")
        self.present(composeVC, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
        
        
    }
    let seccciones:[String] = ["   Desarrolladores","   Dudas y sugerencias","   Sitios web institucionales","   Redes Sociales UNAM","   Redes Sociales FI"]
    let images:[[String]] = [["infor","version"],["email"],["Copia de _2634443","esc","gaceta"],["facebook","twitter"],["facebook","twitter"],["notificacion","mapaapp","version"]]
    let config:[[String]] = [["Acerca de la aplicación","Referencias"],["Email para el desarrollador"],["Página Oficial de la UNAM","Página Oficial de la FI","Gaceta UNAM"],["Facebook","Twitter"],["Facebook","Twitter"]]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return config[section].count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return seccciones[section]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return seccciones.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"Celulosa")
            let image = UIImage(named: images[indexPath.section][indexPath.row])
            cell.imageView!.image = image
            cell.textLabel?.text = config[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 && indexPath.row == 0{
            sendEmail()
        }
        if indexPath.section == 0 && indexPath.row == 0{
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"Informacion")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.section == 0 && indexPath.row == 1{
            PDFDirecto.GlobalVariable.myString = 19
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
        self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.section == 2 && indexPath.row == 0{
            guard let requestUrl = NSURL(string: "https://www.unam.mx") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        if indexPath.section == 2 && indexPath.row == 1{
            guard let requestUrl = NSURL(string: "http://www.ingenieria.unam.mx") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
            
        }
        if indexPath.section == 2 && indexPath.row == 2{
            guard let requestUrl = NSURL(string: "http://www.gaceta.unam.mx") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        if indexPath.section == 3 && indexPath.row == 0{
            guard let requestUrl = NSURL(string: "https://www.facebook.com/UNAM.MX.Oficial/") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        if indexPath.section == 3 && indexPath.row == 1{
            guard let requestUrl = NSURL(string: "https://twitter.com/UNAM_MX") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        if indexPath.section == 4 && indexPath.row == 0{
            guard let requestUrl = NSURL(string: "https://www.facebook.com/fi.unam.mx/") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        if indexPath.section == 4 && indexPath.row == 1{
            guard let requestUrl = NSURL(string: "https://twitter.com/FIUNAM_MX") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.hidesBarsOnTap = false
        navigationController?.navigationBar.barStyle = .black
    }
    override func viewDidLoad() {
        automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
    }

}
