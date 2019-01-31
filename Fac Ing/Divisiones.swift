//
//  Divisiones.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 22/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit
// Podría crear una struct pero ñe
class Divisiones: UIViewController,UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Icel") as! CeldaDivision
        celda.NombreDiv.text = Nombres[indexPath.row]
        celda.ubicación.text = Ubicacion[indexPath.row]
        celda.ImagenDivision.image = UIImage(named: Imagen[indexPath.row])
        celda.ImagenDivision.clipsToBounds = true
        celda.ImagenDivision.layer.cornerRadius = 20
        celda.Departamentos.text = Deptos[indexPath.row]
        celda.Coordina.text = Coordina[indexPath.row]
        if indexPath.row == 5 || indexPath.row == 6 {
            if indexPath.row == 6 {
                celda.texto1.text = "Diplomados"
                celda.texto2.text = "Talleres"
            }else{
                celda.texto1.text = "Asignaturas"
                celda.texto2.text = " "
            }
        }else{
            celda.texto1.text = "Departamentos"
            celda.texto2.text = "Coordinaciones"
        }
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    var Nombres:[String] = ["División de Ciencias Básicas","División de Ingeniería Civil y Geomática","División de Ingeniería Eléctrica","División de Ingeniería en Ciencias de la Tierra","División de Ingeniería Mecánica e Industrial","División de Ciencias Sociales y Humanidades","División de Educación Contínua y a Distancia"]
    var Imagen:[String] = ["dcb","civilGeo","DIE","DCT","DIMEI","humanidades","distancia"]
    var Ubicacion:[String] = ["Anexo de Ingeniería","Edificio R","Edificio Q","Edificio A","Edificio X","Edificio A","Palacio de Minería"]
    var Deptos:[String] = ["Matemáticas \nFísica y Química \nCiencias Aplicadas \nCómputo \nSecretaría Académica",
    "Construcción \nEstructuras \nGeodesia y Cartografía \nGeotecnia \nHidrálica \nSanitaria y Ambiental \nSistemas, Planeación y Transporte \nTopografía","Control y Robótica \nComputación \nElectrónica \nEnergía Eléctrica \nTelecomunicaciones \nProcesamiento de Señales \nSistemas Energéticos",
    "",
    "Diseño y Manufactura \nIndustrial \nMecatrónica \nSistemas Biomédicos \nTermofluidos",
    "Red. y Expo.de temas de Ingeniería \nCultura y Comunicación \nIntroducción a la Economía \nÉtica profesional \nLiteratura Hispanoamericana \nIntr. al Análisis Económico Empresarial",
    "Tecnologías de la información \nMinería y petróleo \nIndustria \nDesarrollo de habilidades directivas \nEconomía y Finanzas"
    ]
    var Coordina:[String] = ["Ciencias Aplicadas \nFísica y Química \nMatemáticas \nCómputo",
                             "Ingeniería Civil \nIngeniería Geomática \nEspecializaciones IC \nPersonal Académico \nAdministrativos",
                             "Ingeniería en Computación \nIngeniería Eléctrica Electrónica \nIngeniería en Telecomunicaciones \nPosgrado",
                             "Ingeniería Geofísica \nIngeniería Geológica \nIngeniería de Minas y Metalurgia \nIngeniería Petrolera \nPosgrados",
                             "Ingeniería Mecánica \nIngeniería Industrial \nIngeniería en S.B. \nPosgrados",
                             "Ciencia, Tecnología y Sociedad \nMéxico Nacional Multicultural \nCreatividad \nLiderazgo \nHistoria y Prospectiva de la Ingeniería \nIngeniería y Políticas Públicas \nIngeniería y Sustentabilidad",
                             "Gestión en la comunicación \nIntroducción a la gestión de cronograma \nGestión de alcance de proyecto"
    ]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
