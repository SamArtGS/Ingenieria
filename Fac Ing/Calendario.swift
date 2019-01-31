//  File.swift
//  Fac Ing
//  Created by Samuel Arturo Garrido Sánchez on 04/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.

import UIKit
class Calendario : UIViewController,UICollectionViewDataSource,JTAppleCalendarViewDelegate,JTAppleCalendarViewDataSource{
    let arregloImagenes1:[String] = ["Inicio de clases","Fin de clases","Primer Final","Segundo Final","Días inhábiles","Intersemestre","Vacaciones","Próximo semestre","Extra: Registro","Extra: Realización","Extra: ASDRI","Grupos y horarios","Inscripciones Online","Altas y bajas","Número  inscripción","Salones asignados","Comprobante final"]
    let arre:[UIColor] = [
        UIColor(red:1.00, green:0.00, blue:0.00, alpha:1.0), //rojo
        UIColor(red:1.00, green:0.54, blue:0.00, alpha:1.0), //naranja
        UIColor(red:1.00, green:0.84, blue:0.00, alpha:1.0), //amarillo
        UIColor(red:0.98, green:1.00, blue:0.00, alpha:1.0), //amarillo flúor
        UIColor(red:0.62, green:0.42, blue:0.03, alpha:1.0), //café
        UIColor(red:0.62, green:0.14, blue:0.03, alpha:1.0), //marrón
        UIColor(red:0.57, green:0.62, blue:0.03, alpha:1.0), //castaña
        UIColor(red:0.38, green:1.00, blue:0.00, alpha:1.0), //verde fluor
        UIColor(red:0.15, green:0.73, blue:0.00, alpha:1.0), //verde normal
        UIColor(red:0.18, green:0.51, blue:0.02, alpha:1.0), //verde oscuro
        UIColor(red:0.08, green:0.93, blue:0.73, alpha:1.0), //azul agua
        UIColor(red:0.00, green:0.00, blue:1.00, alpha:1.0), //azul rey
        UIColor(red:0.00, green:0.34, blue:0.59, alpha:1.0), //azul marino
        UIColor(red:0.50, green:0.00, blue:1.00, alpha:1.0), //púrpura
        UIColor(red:0.22, green:0.00, blue:0.45, alpha:1.0), //morado
        UIColor(red:1.00, green:0.00, blue:0.96, alpha:1.0), //rosa
        UIColor(red:0.26, green:0.23, blue:0.24, alpha:1.0), //gris
        ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arregloImagenes1.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Categor", for: indexPath) as! CollectionEvents
        
        cell.Icon.backgroundColor = arre[indexPath.row]
        cell.Icon.layer.cornerRadius = 15
        cell.TipoEvento.text = arregloImagenes1[indexPath.row]
        return cell
    }
    
    
    @IBOutlet var mont: UILabel!
    @IBOutlet var year: UILabel!
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        
    }
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "DateLab", for: indexPath) as! DateCell
        cell.DateLab.text = cellState.text
        
        
        
        matchedDays(view: cell, cellState: cellState)
        handleCellTextColor(view: cell, cellState: cellState)
        return cell
    }
    
    func matchedDays(view: JTAppleCell?, cellState: CellState){
        
        guard let validCell = view as? DateCell else {return}
        if mont.text == "Enero"{
            if validCell.DateLab.text == "10"||validCell.DateLab.text == "11"||validCell.DateLab.text == "12"{
                validCell.DateLab.textColor = UIColor.white
                validCell.color.backgroundColor = arre[Int.random(in: 1..<15)]
                validCell.color.layer.cornerRadius = 15
            }
        }else{
            validCell.color.backgroundColor = UIColor.white
            validCell.DateLab.textColor = UIColor.black
            
        }
        
    }
    
    
    func handleCellTextColor(view: JTAppleCell?, cellState: CellState){
        guard let validCell = view as? DateCell else {return}
        if cellState.dateBelongsTo == .thisMonth{
            validCell.DateLab.textColor = UIColor.black
        }else{
            validCell.DateLab.textColor = UIColor.lightGray
        }
    }
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        let formatters = DateFormatter()
        formatters.dateFormat = "yyyy MM dd"
        formatters.timeZone = Calendar.current.timeZone
        formatters.locale = Calendar.current.locale
        
        let tartDate = formatters.date(from: "2018 12 01")!
        let ndDate = formatters.date(from: "2019 08 31")!
        let parameters = ConfigurationParameters(startDate: tartDate, endDate: ndDate)
        
        return parameters
    }
    let formatters = DateFormatter()
    
    func calendar(_ calendar: JTAppleCalendarView, didScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
        let date = visibleDates.monthDates.first!.date
        formatters.dateFormat = "yyyy"
        year.text = formatters.string(from: date)
        formatters.dateFormat = "MMMM"
        mont.text = formatters.string(from:date).capitalized
    }
    
    @IBOutlet var calendarView: JTAppleCalendarView!
    func setUpCalendar(){
        calendarView.visibleDates(){ (visibleDates) in
            let date = visibleDates.monthDates.first!.date
            self.formatters.dateFormat = "yyyy"
            self.year.text = self.formatters.string(from: date)
            self.formatters.dateFormat = "MMMM"
            self.mont.text = self.formatters.string(from:date).capitalized
            
            
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        setUpCalendar()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barStyle = .black
    }
   
}

