//
//  Facultad.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 05/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit
import UserNotifications
class Facultad:UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    
    let contenidoCeldas:[String] = ["Licenciaturas","Divisiones","Ubicaciones","Titulaciones","Bibliotecas","Laboratorios","Auditorios","Esculturas","Instituto de Ingeniería","Asociaciones estudiantiles","Galería"]
    var arregloImagenes = ["carreras","divisiones","ubicaciones","diplom","biblioteca","laboratorios","auditorio","cultura","instituto","asocia","galeria"]
    
    //Collection View Controller
    let mostImportant:[String] = ["img1","img7","img8","img10","bibliotecaa","alber","img14"]
    
    
    @IBOutlet var Highlights: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mostImportant.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Categoria", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 20
        cell.imagenCategs.image = UIImage(named: mostImportant[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        let image = UIImage(named: arregloImagenes[indexPath.row])
        celda.imageView!.image = image
        celda.backgroundColor = .clear
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"B")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 1{
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"Doul")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 2 {
            PDFDirecto.GlobalVariable.myString = 2
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 3 {
            LabYTitulViewController.VarGlobal.numerito=1
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"labytitulo")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 4{
            Biblioteca.VarSelect.variable = 0
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"Choro")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 5 {
            LabYTitulViewController.VarGlobal.numerito=2
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"labytitulo")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 6{
            Biblioteca.VarSelect.variable = 1
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"Choro")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        if indexPath.row == 7{
            Biblioteca.VarSelect.variable = 2
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"Choro")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        if indexPath.row == 8{
            guard let requestUrl = NSURL(string: "http://www.iingen.unam.mx/es-mx/Paginas/default.aspx") else {
                return
            }
            UIApplication.shared.openURL(requestUrl as URL)
        }
        if indexPath.row == 9{
            LabYTitulViewController.VarGlobal.numerito = 3
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"labytitulo")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        if indexPath.row == 10{
            let viewTable = storyboard?.instantiateViewController(withIdentifier:"Images")
            self.navigationController?.pushViewController(viewTable!, animated: true)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        else{
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        HightLights.GlobalVariable.recibido = indexPath.row
    }
    
    func NotificacionCalendario(Tipo: String){
        if #available(iOS 10.0, *) {
            let contenido = UNMutableNotificationContent()
            contenido.title = Tipo
            contenido.body = "Body"
            contenido.sound = UNNotificationSound.default
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3.0, repeats: false)
            let request = UNNotificationRequest(identifier: "FiveSecond", content: contenido, trigger: trigger)
            let center = UNUserNotificationCenter.current()
            center.add(request) { (error) in
            }
        } else {
            let notification = UILocalNotification()
            notification.alertBody = "Notification"
            notification.fireDate = NSDate(timeIntervalSinceNow:60) as Date
            notification.repeatInterval = NSCalendar.Unit.minute
            UIApplication.shared.cancelAllLocalNotifications()
            UIApplication.shared.scheduledLocalNotifications = [notification]
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    @IBOutlet var TablaFac: UITableView!
    override func viewDidLoad() {
        NotificacionCalendario(Tipo: "Hola")
        automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
        TablaFac.backgroundColor = .clear
        TablaFac.delegate = self
        TablaFac.dataSource = self
        Highlights.delegate = self
        Highlights.dataSource = self
        navigationController?.navigationBar.barStyle = .black
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
extension UIScreen {
    
    enum SizeType: CGFloat {
        case Unknown = 0.0
        case iPhone4 = 960.0
        case iPhone5 = 1136.0
        case iPhone6 = 1334.0
        case iPhone6Plus = 1920.0
    }
    
    var sizeType: SizeType {
        let height = nativeBounds.height
        guard let sizeType = SizeType(rawValue: height) else { return .Unknown }
        return sizeType
    }
}
