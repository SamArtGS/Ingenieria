//
//  FooTableViewCell.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 05/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//
import UIKit
class FooTableViewCell: UITableViewCell {
    
    
    static let singleCellHeight = 88;
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    //@IBOutlet weak var iconsCollectionView: IconsCollectionView!
    @IBOutlet weak var const_Height_CollectionView: NSLayoutConstraint!
    
    //var delegateCollection : TableViewDelegate?
    
    /*var bars:[] = [] {
        didSet {
            self.iconsCollectionView.reloadData()
            iconsCollectionView.setNeedsLayout()
            self.layoutIfNeeded()
            
            let items:CGFloat = CGFloat(bars.count + 1)
            let value = (items / 3.0).rounded(.awayFromZero)
            
            const_Height_CollectionView.constant =  CGFloat((iconsCollectionView.collectionViewLayout as! UICollectionViewFlowLayout).itemSize.height * value)
            
            self.layoutIfNeeded()
        }
    }
    
    override func awakeFromNib() {
        iconsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        iconsCollectionView.initFlowLayout(superviewWidth: self.frame.width)
        iconsCollectionView.setNeedsLayout()
        iconsCollectionView.dataSource = self
        iconsCollectionView.delegate = self
        const_Height_CollectionView.constant =  iconsCollectionView.contentSize.height
        self.layoutIfNeeded()
        self.setNeedsLayout()
    }*/
}
