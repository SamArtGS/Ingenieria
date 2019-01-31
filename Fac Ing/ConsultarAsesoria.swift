//
//  ConsultarAsesoria.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 12/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit

class ConsultarAsesoria: UIViewController {
    @IBOutlet var pickerSubject: UIPickerView!
    @IBOutlet var pickerDai: UIPickerView!
    @IBOutlet var pickerTurn: UIPickerView!
    var pickerDays = pickerDay()
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerDays = pickerDay()
        navigationController?.navigationBar.barStyle = .black
        //pickerDai.delegate = pickerDays
        //pickerDai.dataSource = pickerDays
    }
}
