//
//  Facultad.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 05/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit

class Facultad:UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UIViewControllerPreviewingDelegate{
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        return UIViewController(nibName: nil, bundle: nil)
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        self.present(viewControllerToCommit, animated: true, completion: nil)
    }
    
    let contenidoCeldas:[String] = ["Carreras","Divisiones","Ubicaciones","Titulaciones","Bibliotecas","Laboratorios","Auditorios","Esculturas","Instituto de Ingeniería","Asociaciones estudiantiles","Galería"]
    var arregloImagenes = ["carreras","divisiones","ubicaciones","diplom","biblioteca","laboratorios","auditorio","cultura","instituto","asocia","galería"]
    
    //Collection View Controller
    let mostImportant:[String] = ["img1","img7","img8","img10","bibliotecaa","alber","img14"]
    
    
    @IBOutlet var Highlights: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mostImportant.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Categoria", for: indexPath) as! CollectionViewCell
        cell.layer.cornerRadius = 20
        cell.imagenCategs.image = UIImage(named: mostImportant[indexPath.row])
        if #available(iOS 9.0, *) {
            if traitCollection.forceTouchCapability == .available {
                self.registerForPreviewing(with: self, sourceView: cell)
            }
        } else {
            
        }
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
        else{
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        HightLights.GlobalVariable.recibido = indexPath.row
    }
    
    
    @IBOutlet var TablaFac: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TablaFac.backgroundColor = .clear
        TablaFac.delegate = self
        TablaFac.dataSource = self
        Highlights.delegate = self
        Highlights.dataSource = self
        navigationController?.navigationBar.barStyle = .black
        registerForPreviewing(with: self, sourceView: Highlights)
        
    }
    
    
}
