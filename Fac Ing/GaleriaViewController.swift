//
//  GaleriaViewController.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 10/02/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit
import Photos

class GaleriaViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UINavigationControllerDelegate{
    var coleccion: UICollectionView!
    var Imagenes = ["pic1","pic2","pic3","pic4","pic5","pic6","pic7","jkl","Anexus","palacioMin"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Imagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "Imagen", for: indexPath) as! CollectionViewCell
        celda.imagenCategs.image = UIImage(named: Imagenes[indexPath.row])
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
    }
}
