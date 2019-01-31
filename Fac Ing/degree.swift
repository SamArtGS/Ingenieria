//
//  degree.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 26/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class degree: UIViewController {

    @IBOutlet var imagen: UIImageView!
    @IBOutlet var div: UILabel!
    @IBOutlet var titulo: UITextView!
    @IBOutlet var contenido: UITextView!
    
    
    
    
    @IBAction func Plan(_ sender: Any) {
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"PDFDirecty")
        self.navigationController?.pushViewController(viewTable!, animated: true)
    }
    override func viewDidLoad() {
        imagen.layer.cornerRadius = 20
        imagen.clipsToBounds = true
        super.viewDidLoad()
        contenido.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.nLorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.nLorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.n"
        navigationController?.navigationBar.barStyle = .black
    }
}
