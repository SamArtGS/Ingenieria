//
//  pickerDay.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 12/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit

class pickerDay: UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 1
    }
    
    var dias:[String] = ["Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return dias.count
    }
    override func numberOfRows(inComponent component: Int) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dias[row]
    }
}
