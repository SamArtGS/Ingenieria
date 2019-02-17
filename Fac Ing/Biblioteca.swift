//
//  Biblioteca.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 10/02/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit

class Biblioteca: UIViewController,UITableViewDelegate,UITableViewDataSource{
    struct VarSelect {
        static var variable = Int()
    }
    let NombreBibi:[String] = ["Ing. Antonio Dovalí Jaime","Mtro. Enrique Rivero Borrell","Dr. Enzo Levi","Ing. Antonio M. Anza ","Ing. Bruno Mascanzoni"]
    let NombreAudito:[String] = ["Ing. Javier Barros Sierra","Ing. Sotero Prieto","Ing Raúl J. Marsal"]
    let NombreEscul:[String] = ["La Leonardita"]
    let NombreAsocia:[String] = [""]
    
    let ImagenBib:[String] = ["biblioprincipal","biblioanexo","biblioposgrado","bibliopal1","bibliopal2"]
    let ImagenAudito:[String] = ["barros","sotero","marsal"]
    let ImagenEscul:[String] = ["Leo"]
    let ImagenAsocia:[String] = [""]
    
    let UbicaBib:[String] = ["Edificio A - Principal","Edificio L - Anexo","Edificio W - Posgrado","Palacio de Minería","Palacio de Minería"]
    let UbicaAudito:[String] = ["Edifico A - Principal","Edificio M - Anexo","Edificio U - Posgrado"]
    let UbicaEscul:[String] = ["Anexo de ingeniería"]
    let UbicaAsocia:[String] = [""]
    
    let DescripBib:[String] = ["La colección del Sistema Bibliotecario de la Facultad de Ingeniería se conforma por: 297,000 volúmenes aproximadamente de libros, conformado por la colección general, obras de consulta, colecciones especiales. 230,000 volúmenes en su fondo antiguo y archivo histórico","La Facultad de Ingeniería ha desarrollado un plan maestro, que norma el crecimiento, la adecuación y optimización del espacio físico. Dentro de este plan maestro se contemplaron trece acciones por ejecutar, una de las cuales es la biblioteca Enrique Rivera Borrell.","En 1988 se construye el actual edificio de la biblioteca que cuenta con una superficie de 2,000 m2 donde se dispone de un espacio suficiente para el acervo, tanto de libros y revistas, colecciones especiales, salas de lectura para usuarios, videoteca, sala de audiovisuales, y servicios de información","El fondo de origen de la Biblioteca data de las postrimerías de la época colonial y lo constituye la biblioteca del Real Seminario de Minería, establecida por Fausto de Elhuyar con la autorización del Real Tribunal de Minería, los primeros libros se adquirieron en compra que se hizo al minero Eugenio Santelices Pablo y los que pertenecieron a Joaquín Velázquez de León","Dentro del Palacio de Minería, pertenece al fondo reservado de que datan de la escuela Nacional de Ingenieros desde la época colonial"]
    let DescripAudito:[String] = ["Javier Barros Sierra fue un ingeniero, matemático, académico y funcionario público mexicano, quien fue rector de la Universidad Nacional Autónoma de México durante el conflicto estudiantil de 1968, y el primer Secretario de Obras Públicas","Sotero Prieto Rodríguez México, fue un matemático mexicano, hijo del Ing. en Minas y profesor de matemáticas Raúl Prieto González Bango y de doña Teresa Rodríguez de Prieto","Raúl J. Marsal Córdoba fue un ingeniero civil, catedrático e investigador argentino nacionalizado mexicano. Se especializó en mecánica de suelos y en ingeniería geotécnica."]
    let DescripEscul:[String] = ["La leonardita es.."]
    let DescripAsocia:[String] = [""]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if VarSelect.variable == 0{
            return NombreBibi.count
        }
        if VarSelect.variable == 1{
            return NombreAudito.count
        }
        if VarSelect.variable == 2{
            return NombreEscul.count
        }
        if VarSelect.variable == 3{
            return NombreAsocia.count
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Bibi") as! BibAudEsculAsocia
        celda.Imagen.clipsToBounds = true
        celda.Imagen.layer.cornerRadius = 20
        if VarSelect.variable == 0{
            celda.Nombre.text = NombreBibi[indexPath.row]
            celda.ubicacion.text = UbicaBib[indexPath.row]
            celda.descripcion.text = DescripBib[indexPath.row]
            celda.Imagen.image = UIImage(named: ImagenBib[indexPath.row])
        }
        if VarSelect.variable == 1{
            celda.Nombre.text = NombreAudito[indexPath.row]
            celda.ubicacion.text = UbicaAudito[indexPath.row]
            celda.descripcion.text = DescripAudito[indexPath.row]
            celda.Imagen.image = UIImage(named: ImagenAudito[indexPath.row])
        }
        if VarSelect.variable == 2{
            celda.Nombre.text = NombreEscul[indexPath.row]
            celda.ubicacion.text = UbicaEscul[indexPath.row]
            celda.descripcion.text = DescripEscul[indexPath.row]
            celda.Imagen.image = UIImage(named: ImagenEscul[indexPath.row])
        }
        if VarSelect.variable == 3{
            celda.Nombre.text = NombreAsocia[indexPath.row]
            celda.ubicacion.text = UbicaAsocia[indexPath.row]
            celda.descripcion.text = DescripAsocia[indexPath.row]
            celda.Imagen.image = UIImage(named: ImagenAsocia[indexPath.row])
        }
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        if VarSelect.variable == 0{
            self.title = "Bibliotecas"
        }
        if VarSelect.variable == 1{
            self.title = "Auditorios"
        }
        if VarSelect.variable == 2{
            self.title = "Esculturas"
        }
        if VarSelect.variable == 3{
            self.title = "Asociaciones Estudiantiles"
        }
    }
    override func viewDidLoad() {
        automaticallyAdjustsScrollViewInsets = false
        super.viewDidLoad()
        
    }


}
