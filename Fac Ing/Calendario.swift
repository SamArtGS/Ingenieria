//  File.swift
//  Fac Ing
//  Created by Samuel Arturo Garrido Sánchez on 04/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.

import UIKit
import UserNotifications
class Calendario : UIViewController,UICollectionViewDataSource,JTAppleCalendarViewDelegate,JTAppleCalendarViewDataSource{
    var arregloImagenes1:[String] = ["HOY: ","","Inicio de clases","Fin de clases","Primer Final","Segundo Final","Días inhábiles","Intersemestre","Vacaciones","Próximo semestre","Extra: Registro","Extra: Realización","Extra: ASDRI","Grupos y horarios","Inscripciones Online","Altas y bajas","Número  inscripción","Salones asignados","Comprobante final"]
    
    
    let arre:[UIColor] = [
        UIColor(red:1.00, green:0.00, blue:0.00, alpha:1.0), //rojo
        UIColor.white,   //BLANCO
        UIColor(red:0.84, green:0.06, blue:0.06, alpha:1.0), //rojo vino
        UIColor(red:1.00, green:0.54, blue:0.00, alpha:1.0), //naranja
        UIColor(red:1.00, green:0.84, blue:0.00, alpha:1.0), //amarillo
        UIColor(red:0.98, green:1.00, blue:0.00, alpha:1.0), //amarillo flúor
        UIColor(red:0.62, green:0.42, blue:0.03, alpha:1.0), //café
        UIColor(red:0.83, green:0.70, blue:0.70, alpha:1.0), //Beige
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
        cell.Icon.layer.cornerRadius = 10
        cell.TipoEvento.text = arregloImagenes1[indexPath.row]
        return cell
    }
    
    
    @IBOutlet var mont: UILabel!
    @IBOutlet var year: UILabel!
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        
    }
    func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        guard let celda = cell as? DateCell else {return}
        if celda.Selected{
            let dateFro = DateFormatter()
            dateFro.dateFormat = "dd/MM/yyyy"
            let Alerts = dateFro.string(from: date)
        
            let alert = UIAlertController(title: Alerts, message: celda.concepto , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
            })
            self.present(alert, animated: true)
        }
    }
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "DateLab", for: indexPath) as! DateCell
        
        cell.DateLab.text = cellState.text
        
        
        sharedFunctionToConfigureCell(myCustomCell: cell, cellState: cellState, date: date)
        return cell
    }
    //FECHAS
    let inicioClases:String = "2019 01 28"
    let finClases:String = "2019 05 25"
    let PrimerFinal:[String] = ["2019 05 27","2019 05 28","2019 05 29","2019 05 30","2019 05 31","2019 06 01"]
    let SegundoFinal:[String] = ["2019 06 03","2019 06 04","2019 06 05","2019 06 06","2019 06 07","2019 06 08"]
    let DiasFaltas:[String] = ["2019 01 01", "2019 02 04","2019 03 18","2019 04 15","2019 04 16","2019 04 17","2019 04 18","2019 04 19","2019 04 20","2019 05 01","2019 05 10","2019 05 15"]
    let Intersemestre:[String] = ["2019 01 07","2019 01 08","2019 01 09","2019 01 10","2019 01 11","2019 01 12","2019 01 14","2019 01 15","2019 01 16","2019 01 17","2019 01 18","2019 01 19","2019 01 21","2019 01 22","2019 01 23","2019 01 24","2019 01 25","2019 01 26","2019 06 10","2019 06 11","2019 06 12","2019 06 13","2019 06 14","2019 06 15","2019 06 17","2019 06 18","2019 06 19","2019 06 20","2019 06 21","2019 06 22","2019 06 24","2019 06 25","2019 06 26","2019 06 27","2019 06 28","2019 06 29","2019 07 22","2019 07 23","2019 07 24","2019 07 25","2019 07 26","2019 07 27","2019 07 29","2019 07 30","2019 07 31","2019 08 01","2019 08 02","2019 08 03"]
    let Vacaciones:[String] = ["2019 01 01","2019 01 02","2019 01 03","2019 01 04","2019 01 05","2019 07 01","2019 07 02","2019 07 03","2019 07 04","2019 07 05","2019 07 06","2019 07 08","2019 07 09","2019 07 10","2019 07 11","2019 07 12","2019 07 13","2019 07 15","2019 07 16","2019 07 17","2019 07 18","2019 07 19","2019 07 20"]
    let ProximoSemestre:String = "2019 08 05"
    let ExamenExtraRegistro:[String] = ["2019 02 25","2019 02 26","2019 04 01","2019 04 02","2019 05 20","2019 05 21"]
    let ExamenExtraRealizacion:[String] = ["2019 03 11","2019 03 12","2019 03 13","2019 03 14","2019 03 15","2019 03 16","2019 04 22","2019 04 23","2019 04 24","2019 04 25","2019 04 26","2019 04 27"]
    let ExamenExtraASDRI:[String] = ["2019 02 18","2019 02 19","2019 02 20"]
    let GruposHorarios:String = "2019 01 14"
    let InscripcionesInternet:[String] = ["2019 01 21","2019 01 22","2019 01 23"]
    let AltasBajas:[String] = ["2019 01 31","2019 02 01"]
    let NumYTurnoInscripcion:String = "2019 01 17"
    let SalonAsignado:String = "2019 01 26"
    let ComprobanteFinal:String = "2019 02 16"
    
    
    let calendar = Calendar.current
    
    
    func sharedFunctionToConfigureCell(myCustomCell: DateCell, cellState: CellState, date: Date) {
        
        myCustomCell.DateLab.text = cellState.text
        
        let dateFormatterss = DateFormatter()
        dateFormatterss.dateFormat = "yyyy MM dd"
        dateFormatterss.timeZone = Calendar.current.timeZone
        dateFormatterss.locale = Calendar.current.locale
        
        if finClases == dateFormatterss.string(from: date) || ProximoSemestre == dateFormatterss.string(from: date) || inicioClases == dateFormatterss.string(from: date) || calendar.isDateInToday(date) || Vacaciones.contains(dateFormatterss.string(from: date)) || Intersemestre.contains(dateFormatterss.string(from: date)) || PrimerFinal.contains(dateFormatterss.string(from: date)) || SegundoFinal.contains(dateFormatterss.string(from: date)) || DiasFaltas.contains(dateFormatterss.string(from: date)) ||
            ExamenExtraRegistro.contains(dateFormatterss.string(from: date)) || ExamenExtraRealizacion.contains(dateFormatterss.string(from: date)) || ExamenExtraASDRI.contains(dateFormatterss.string(from: date)) || InscripcionesInternet.contains(dateFormatterss.string(from: date)) || AltasBajas.contains(dateFormatterss.string(from: date)) || GruposHorarios == dateFormatterss.string(from: date) || NumYTurnoInscripcion == dateFormatterss.string(from: date) || SalonAsignado == dateFormatterss.string(from: date) || ComprobanteFinal == dateFormatterss.string(from: date){
            
            
            if(Intersemestre.contains(dateFormatterss.string(from: date))){
            for intersemestre in Intersemestre{
                if date == dateFormatterss.date(from: intersemestre) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[7]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "🔍 Intersemestre ⏳"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }}
            if(Vacaciones.contains(dateFormatterss.string(from: date))){
            for vacaciones in Vacaciones{
                if date == dateFormatterss.date(from: vacaciones) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[8]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "🌴 Vacaciones 😎"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }
            }
            if(PrimerFinal.contains(dateFormatterss.string(from: date))){
            for final1 in PrimerFinal{
                if date == dateFormatterss.date(from: final1) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[4]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "😨 Exámenes finales: Primera vuelta 📝"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }
            }
            if(SegundoFinal.contains(dateFormatterss.string(from: date))){
            for final2 in SegundoFinal{
                if date == dateFormatterss.date(from: final2) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[5]
                    myCustomCell.DateLab.textColor = UIColor.black
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "😓 Exámenes finales: Segunda vuelta 📝"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }
            }
            if(ExamenExtraRegistro.contains(dateFormatterss.string(from: date))){
            for exaExtraR in ExamenExtraRegistro{
                if date == dateFormatterss.date(from: exaExtraR) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[10]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "😦 Exámenes extraordinarios: Registro 📝"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }
            }
            for exaExtraH in ExamenExtraRealizacion{
                if date == dateFormatterss.date(from: exaExtraH) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[11]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "🖊 Exámenes extraordinarios: Realización 😳"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }
            if(ExamenExtraASDRI.contains(dateFormatterss.string(from: date))){
            for exaExtraAs in ExamenExtraASDRI{
                if date == dateFormatterss.date(from: exaExtraAs) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[12]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "😬 Exámenes extraordinarios: Registro ASDRI 📝"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
                }}
            if(DiasFaltas.contains(dateFormatterss.string(from: date))){
            for faltas in DiasFaltas{
                if date == dateFormatterss.date(from: faltas) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[6]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "👀 Asueto Académico (Festivos) 🌤"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
                }}
            if(InscripcionesInternet.contains(dateFormatterss.string(from: date))){
            for inscrip in InscripcionesInternet{
                if date == dateFormatterss.date(from: inscrip) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[14]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "🕘 Inscripciones 🖥"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
                }}
            if(AltasBajas.contains(dateFormatterss.string(from: date))){
            for alba in AltasBajas{
                if date == dateFormatterss.date(from: alba) && cellState.dateBelongsTo == .thisMonth{
                    myCustomCell.color.backgroundColor = arre[15]
                    myCustomCell.DateLab.textColor = UIColor.white
                    if #available(iOS 10.0, *){
                        myCustomCell.color.layer.cornerRadius = 10
                    }else{
                        myCustomCell.color.layer.cornerRadius = 2
                    }
                    myCustomCell.Selected = true
                    myCustomCell.concepto = "😅 Altas y bajas 📲"
                }
                if (cellState.dateBelongsTo != .thisMonth){
                    myCustomCell.color.backgroundColor = UIColor.white
                    myCustomCell.DateLab.textColor = UIColor.lightGray
                    myCustomCell.Selected = false
                }
            }
            }
            if date == dateFormatterss.date(from: inicioClases) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[2]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.Selected = true
                myCustomCell.concepto = "☀️ Inicio de clases 📖"
            }
            
            if date == dateFormatterss.date(from: GruposHorarios) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[13]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.Selected = true
                myCustomCell.concepto = "📆 Publicación de grupos y horarios disponibles 📊"
            }
            if date == dateFormatterss.date(from: NumYTurnoInscripcion) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[16]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.Selected = true
                myCustomCell.concepto = "😶 Número y turno de inscripción 📍"
            }
            if date == dateFormatterss.date(from: SalonAsignado) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[17]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.Selected = true
                myCustomCell.concepto = "🏫 Publicación de los salones asignados 📚"
            }
            if date == dateFormatterss.date(from: ComprobanteFinal) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[18]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.Selected = true
                myCustomCell.concepto = "📬 Publicación de comprobante final 📄"
            }
            
            if date == dateFormatterss.date(from: finClases) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[3]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.concepto = "😃 Fin de clases 🎊"
            }
            if date == dateFormatterss.date(from: ProximoSemestre) && cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = arre[9]
                myCustomCell.DateLab.textColor = UIColor.white
                if #available(iOS 10.0, *){
                    myCustomCell.color.layer.cornerRadius = 10
                }else{
                    myCustomCell.color.layer.cornerRadius = 2
                }
                myCustomCell.Selected = true
                myCustomCell.concepto = "💡 Próximo semestre 🔜"
            }
            
        if calendar.isDateInToday(date) && cellState.dateBelongsTo == .thisMonth{
            myCustomCell.color.backgroundColor = arre[0]
            myCustomCell.DateLab.text = "⭐️"
            myCustomCell.concepto = "⭐️ HOY ⭐️"
            myCustomCell.DateLab.textColor = UIColor.white
            if #available(iOS 10.0, *){
                myCustomCell.color.layer.cornerRadius = 10
            }else{
                myCustomCell.color.layer.cornerRadius = 2
            }
            myCustomCell.Selected = true
        }
        }else{
            if cellState.dateBelongsTo == .thisMonth{
                myCustomCell.color.backgroundColor = UIColor.white
                myCustomCell.DateLab.textColor = UIColor.black
                myCustomCell.Selected = false
            }else{
                myCustomCell.color.backgroundColor = UIColor.white
                myCustomCell.DateLab.textColor = UIColor.lightGray
                myCustomCell.Selected = false
            }
        }
    
        
    }
 
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        let formatters = DateFormatter()
        formatters.dateFormat = "yyyy MM dd"
        formatters.timeZone = Calendar.current.timeZone
        formatters.locale = Calendar.current.locale
        
        let tartDate = formatters.date(from: "2019 01 01")!
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
    
    var firstVisibleDate: Date? {
        return calendarView.visibleDates().monthDates.first?.date
    }
    let date = Date()
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
        let dateFro = DateFormatter()
        dateFro.dateFormat = "dd/MM/yyyy"
        let Todays = dateFro.string(from: Date())
        arregloImagenes1[0] = "Hoy: \(Todays)"
        setUpCalendar()
        calendarView.scrollToDate(Date())
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        let theDate = Date()
        if self.calendarView != nil {
            NSLog("anchorDate: \(theDate)")
            self.calendarView.viewWillTransition(to: size, with: coordinator, anchorDate: theDate)
        }
    }
    
    override func viewDidLoad() {
        mont.adjustsFontSizeToFitWidth = true
        year.adjustsFontSizeToFitWidth = true
        mont.minimumScaleFactor = 0.4
        year.minimumScaleFactor = 0.4
        super.viewDidLoad()
        
        navigationController?.navigationBar.barStyle = .black
    }
}

extension UICollectionViewFlowLayout {
    open override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
