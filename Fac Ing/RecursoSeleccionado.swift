//
//  RecursoSeleccionado.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 04/12/18.
//  Copyright © 2018 SamArtGS. All rights reserved.
//

import UIKit
class RecursoSeleccionado:UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate{
    @IBOutlet var tabla: UITableView!
    @IBOutlet var Searching: UISearchBar!
    
    
    var received:Int?
    var isSearching:Bool = false
    
    var filtrados:[String] = []
    var contenidoCeldasss:[String] = ["Serie de ejercicios","Asesorías","Taller de ejercicios","Reglamentos","Programa de asignaturas","Conferencias","Manual de prácticas","Exámenes pasados: Finales","Exámenes pasados: Extraordinarios","Guía escolar 2019-2","Web de profesores","Asesorías en línea","Guía para protección"]
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if  searchText.count != 0{
        switch opcion![0] {
        case 0:
            buscado0 = table00.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})//CHECAR EL FILTRO QUE SEA INTELIGENTE
            isSearching = true
        case 1:
            buscado1 = table1.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 2:
           buscado2 = table2.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 3:
            buscado3 = table3.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 4:
           buscado4 = table4.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 5:
            buscado5 = table5.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 6:
            buscado6 = table6.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 7:
            buscado7 = table7.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 8:
            buscado8 = table8.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        case 10:
            buscado10 = table10.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
        default:
            buscado0 = table00.filter({$0.range(of: searchText, options: [.diacriticInsensitive, .caseInsensitive]) != nil})
            isSearching = true
            }
        }else
            {
              isSearching = false
            tabla.reloadData()
            }
        tabla.reloadData()
    }
    var buscado0:[String] = []
    var buscado1:[String] = []
    var buscado2:[String] = []
    var buscado3:[String] = []
    var buscado4:[String] = []
    var buscado5:[String] = []
    var buscado6:[String] = []
    var buscado7:[String] = []
    var buscado8:[String] = []
    var buscado9:[String] = []
    var buscado10:[String] = []
    var table0:[String] = [
        "Álgebra","Álgebra","Álgebra","Álgebra","Álgebra","Álgebra",/* 6 */
        
                           "Álgebra lineal","Álgebra lineal","Álgebra lineal","Álgebra lineal","Álgebra lineal", /* 5 */
        
                           "Cálculo diferencial","Cálculo diferencial","Cálculo diferencial","Cálculo diferencial","Cálculo diferencial","Cálculo diferencial", /* 6 *F* */
                           
                           "Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica","Cálculo y geometría analítica", /* 7 */
                           
                           "Geometría analítica","Geometría analítica","Geometría analítica","Geometría analítica","Geometría analítica", /* 5 */
                           
                           "Cálculo integral","Cálculo integral","Cálculo integral","Cálculo integral", /* 4 */
                           
                           "Cálculo vectorial","Cálculo vectorial","Cálculo vectorial","Cálculo vectorial", /* 4 */
        
                           "Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas","Matemáticas avanzadas", /* 8 */
                           
                           "Análisis numérico","Análisis numérico","Análisis numérico","Análisis numérico","Análisis numérico","Análisis numérico", /* 6 */
                           
                           "Ecuaciones diferenciales","Ecuaciones diferenciales","Ecuaciones diferenciales","Ecuaciones diferenciales","Ecuaciones diferenciales", /* 5 */
                           
                           "Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo","Electricidad y magnetismo", /* 10  SERIES Y EJERCICIOS SON DISTINTOS*/
                           
                           "Física", /* 1 Cuaderno de ejercicios correspondiente*/
                           
                           "Física experimental", /* 1 Cuaderno de ejercicios correspondiente*/
                           
                           "Fundamentos de física", /* 1 Cuaderno de ejercicios correspondiente*/
                           
                           "Química","Química","Química","Química","Química","Química","Química","Química", /* 8 */
                           
                           "F. de termo y electro","F. de termo y electro","F. de termo y electro","F. de termo y electro", /* 4 */
                           
                           "S. termo y electro","S. termo y electro","S. termo y electro","S. termo y electro", /* 4 */
                           
                           "Cinemática y dinámica","Cinemática y dinámica","Cinemática y dinámica","Cinemática y dinámica","Cinemática y dinámica", /* 5 */
                           
                           "Estática","Estática","Estática","Estática","Estática","Estática", /* 6 */
                           
                           "Probabilidad","Probabilidad","Probabilidad","Probabilidad","Probabilidad", /* 5 */
                           
                           "Estadística","Estadística","Estadística","Estadística","Estadística","Estadística", /* 6 */
    ]
    let NumSerie:[String] = ["Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Serie VII",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Serie VII","Serie VIII",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Ejercicio I","Ejercicio II","Ejercicio III","Ejercicio IV",
                             "Completo",
                             "Completo",
                             "Completo",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI","Serie VII","Serie VIII",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V",
                             "Serie I", "Serie II","Serie III","Serie IV","Serie V","Serie VI",
                            ]
    var dictionary:[String:Int] = [:]
    var PDFWebProfes:[String] = ["http://djasul.mex.tl/intro.html","http://profesores.dcb.unam.mx/users/isabelpaj/","https://unamfi.wixsite.com/mis-cursos-cam","http://andrew.cienciaseingenieria.mx/","http://profesores.dcb.unam.mx/users/alvarezga","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://profesores.dcb.unam.mx/users/miriamas/","http://profesores.dcb.unam.mx/users/enriqueas/","http://sites.google.com/site/materialserarz/","http://profesores.dcb.unam.mx/users/rocioan/","http://profesores.dcb.unam.mx/users/angellbs/","https://sites.google.com/site/princtermo/","https://sites.google.com/view/franciscobarrerar","http://profesores.dcb.unam.mx/users/violetabh/","http://profesores.dcb.unam.mx/users/aideebo/","http://profesores.dcb.unam.mx/users/hortenciacl","http://profesores.dcb.unam.mx/users/guillermocm/","http://profesores.dcb.unam.mx/users/erikcip/","http://profesores.dcb.unam.mx/users/franciscojcc/","http://profesores.dcb.unam.mx/users/juanccv/","http://profesores.dcb.unam.mx/users/miltonchg/","http://www.ingenieria.unam.mx/~aulaweb/","http://profesores.dcb.unam.mx/users/scarloscc","http://www.ccadet.unam.mx/secciones/depar/sub3/fopede/semb/MBMM.html","http://profesores.dcb.unam.mx/users/adrianaaes/","http://profesores.dcb.unam.mx/users/rauler/","http://www.esponda.org/","http://profesores.dcb.unam.mx/users/estherfc/","http://dimei.fi-b.unam.mx/~beta/algebra/","http://profesores.dcb.unam.mx/users/rigobertofz","http://profesores.dcb.unam.mx/users/rigelgl/","http://profesores.dcb.unam.mx/users/salvadorgb/","http://profesores.dcb.unam.mx/users/veronicahgc/","http://www.ingenieria.unam.mx/~colomepg/","http://profesores.dcb.unam.mx/users/joelg/","http://profesores.dcb.unam.mx/users/marcog/","http://profesores.dcb.unam.mx/users/miguelegc/","http://profesores.dcb.unam.mx/users/santiagogl/","http://profesores.dcb.unam.mx/users/ericagv/","http://profesores.dcb.unam.mx/users/rubenhr/","http://profesores.dcb.unam.mx/users/gabrieljm/","http://profesores.dcb.unam.mx/users/mariojv/","http://profesores.dcb.unam.mx/users/mayverenajp","http://profesores.dcb.unam.mx/users/normapla/","http://profesoramlc.wordpress.com/","http://profesores.dcb.unam.mx/users/adanlr/","http://edgar09.mex.tl/","http://profesores.dcb.unam.mx/users/margaritalc/","http://profesores.dcb.unam.mx/users/ericklr/Index.html","http://profesores.dcb.unam.mx/users/mariacms/","http://profesores.dcb.unam.mx/users/sarammm/","http://profesores.dcb.unam.mx/users/nayellimg/","http://www.paginaspersonales.unam.mx/academicos/datoscontacto/alias:raquelmartinez","http://profesores.dcb.unam.mx/users/abrahammb/","http://profesores.dcb.unam.mx/users/ricardomg","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://profesores.dcb.unam.mx/users/yukihiro/prof/","https://sites.google.com/site/cihectormg/home","http://profesores.fi-b.unam.mx/mozo/","http://profesores.dcb.unam.mx/users/juanoc/","http://profesores.dcb.unam.mx/users/mariagob/","http://profesores.dcb.unam.mx/users/arnulfoog/","http://profesores.dcb.unam.mx/users/jesusapr/","http://profesores.dcb.unam.mx/users/catarinofpl/","http://profesores.dcb.unam.mx/users/antoniapl/","http://profesores.dcb.unam.mx/users/analaurapm/","http://zoonico.freehostia.com/","http://jaima.freehostia.com/moodle","http://profesores.dcb.unam.mx/users/aliciapr/","http://cozumel.fi-a.unam.mx/~pinilla/","http://profesores.dcb.unam.mx/users/adrianpe/","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://profesores.dcb.unam.mx/users/raulpm/","http://profesores.dcb.unam.mx/users/gloriarr/","http://www.paginaspersonales.unam.mx/acad/andresbasilioramirez/presentacions","http://profesores.fi-b.unam.mx/jareyc/","http://profesores.dcb.unam.mx/users/rosalbarch","http://profesores.dcb.unam.mx/users/mariaord/","http://profesores.dcb.unam.mx/users/cynthiarm/","http://profesores.dcb.unam.mx/users/dariorp/","http://profesores.dcb.unam.mx/users/alejandrort/","http://profesores.dcb.unam.mx/users/emilyerll/","http://profesores.dcb.unam.mx/users/jesuserm/","http://goo.gl/WUqQNq","http://www.jfsr.com.mx/","http://profesores.dcb.unam.mx/users/fernandos","http://profesores.dcb.unam.mx/users/mariasvss/","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://www.paginaspersonales.unam.mx/academicos/datosContacto/alias:franciscoleonelsilva","http://profesores.dcb.unam.mx/users/rodolfosu/","http://profesores.dcb.unam.mx/users/luishss","http://www.ursularias.com/URSUL.htm","http://profesores.dcb.unam.mx/users/manueldjvg/","http://dcb.fi-c.unam.mx/profesores/irene/","https://sites.google.com/site/c354rvl/","http://www.ingenieria.unam.mx/~luiscvs/","http://profesores.dcb.unam.mx/users/juanvt","http://profesores.dcb.unam.mx/users/salvadorevp/","http://www.ingenieria.unam.mx/sistemas/semblanzas/AGWP.php"]
    var table00:[String] = []
    func cargar(){
        var p:Int = 0
        for k in table0 {
            table00.append(k+" - "+NumSerie[p])
            p = p+1
        }
        p=0
        var j:Int = 0
        switch opcion![0] {
        case 0:
            for i in table00{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 1:
            for i in table1{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 2:
            for i in table2{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 3:
            for i in table3{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 4:
            for i in table4{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 5:
            for i in table5{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 6:
            for i in table6{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 7:
            for i in table7{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 8:
            for i in table8{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 9:
            for i in table9{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        case 10:
            for i in table10{
                dictionary[i] = j
                j = j+1
            }
            j=0
            break
        default:
            for i in table00{
                dictionary[i] = j
                j = j+1
            }
            j=0
        }
    }
    //Tablas de contenidos distintos
    let table1:[String] = [""] //ASESORIAS
    let table2:[String] = [""] //Taller de Ejercicios

    
    let table3:[String] = ["Laboratorios y talleres","Defensoría de los derechos universitarios","Reglamento general de inscripciones","Reglamento general de exámenes","Medidas de protección a los no fumadores","Reglamento de opciones de titulación","Instructivo para la programación de examen profesional","Instructivo para ceremonia de recepción profesional"]//Reglamentos
    
    
    let table4:[String] = ["Álgebra","Álgebra lineal","Cálculo diferencial","Cálculo y geometría analítica","Geometría analítica","Cálculo integral","Cálculo vectorial","Matemáticas avanzadas","Análisis numérico","Ecuaciones diferenciales","Electricidad y magnetismo","Física","Física experimental","Fundamentos de física","Química","F. de termo y electro","S. termo y electro","Cinemática y dinámica","Estática","Probabilidad","Estadística","Mecánica","Dibujo","Fundamentos de estadística","Porbabilidad y estadística","Acústica y óptica","Electromagnetismo y óptica","Física moderna","Fundamentos de óptica","Introducción a la biofísica","Termodinámica","Int. física del estado sólido"] //Programa de asignaturas
    let table5:[String] = ["Grupo y Campos - Ing. Castañeda de Isla Puga","Probabilidad Geométrica -  Espinosa Hurtado","Funciones Variables de Variable Real - Balmori Negrete","Problemas de Máximos y Mínimos - García y Colomé","Sistemas de Ecuaciones Lineales - Barrera García", "Coordenadas Curvilíneas - Arenas Sánchez","Álgebra Vectorial - Arenas Sánchez","Métodos de integración y Aplicaciones - Ramírez Galindo","Prueba de Hipótesis - Pineda Norman","Aplicaciones del Álgebra Lineal - López Carrillo","Matrices y Determinantes - Balmori Negrete"] //VIDEO TABLE VIEW
    let table6:[String] = ["Acústica y Óptica","Electricidad y Magnetismo","Electromagnetismo y óptica","Física","Física Experimental","Fundamentos de Termodinámica y Electromagnetismo","Fundamentos de física","Fundamentos de óptica","Química","Termodinámica",""] //Manual de prácticas
    
    
    
    
    
    
    
    
    
    
    
    let table7:[String] = ["Álgebra - Primer Final 2016-2 - A","Álgebra - Primer Final 2016-2 - B","Álgebra - Segundo Final 2016-2","Álgebra - Primer Final 2019-1 - A","Álgebra - Primer Final 2019-1 - B","Álgebra Lineal - Primer Final 2018-2 - B","Álgebra Lineal - Primer Final 2018-2 - C","Álgebra Lineal - Segundo Final 2018-2","Cálculo Integral - Primer Final 2017-1 - A","Cálculo Integral - Primer Final 2017-1 - C","Cálculo Integral - Segundo Final 2017-1","Cálculo Vectorial - Primer Final 2018-2 -A","Cálculo Vectorial - Primer Final 2018-2 -C","Cálculo Vectorial - Segundo Final 2018-1","Cálculo y Geo. Analítica - Primer Final 2016-2 - A","Cálculo y Geo. Analítica - Segundo Final 2016-2","Propuesta Análisis Numérico 2017-1","Propuesta Análisis Numérico 2017-2","Ecuaciones Diferenciales - Primer Final 2019-1 - B","Ecuaciones Diferenciales - Primer Final 2018-2 - C","Ecuaciones Diferenciales - Segundo Final 2018-2","Ecuaciones Diferenciales - Segundo Final 2019-1","Mecánica - Primer Final 2018-1","Mecánica - Segundo Final 2018-1","Cinemática y Dinámica - Primer Final 2018-1","Estática - Primer Final 2018-1","Probabilidad - Primer Final 2018-1","Estadística - Primer Final 2018-1","Probabilidad - Segundo Final 2018-1","Estadística - Segundo Final 2018-1"] //Exámenes pasados resueltos
    let table8:[String] = ["Álgebra Lineal - 2018-2","Cálculo Integral - 2018-2","Cálculo Integral - 2011-1","Cálculo Vectorial - 2018-2","Cálculo Vectorial - 2018-1","Cálculo Vectorial - 2018-2","Ecuaciones Diferenciales - 2015-1","Ecuaciones Diferenciales - 2016-1"] //examenes pasados extra
    let table9:[String] = [""]
    let table10:[String] = ["AGUILAR DELGADO SILVIA JENNIFER","AGUILAR JUÁREZ ISABEL PATRICIA","AGUILAR MORALES CASIANO","ÁLVAREZ CID ANDRÉS","ÁLVAREZ GONZÁLEZ ADRIÁN","ARENAS GONZÁLEZ ALFREDO","ARENAS SÁENZ MIRIAM","ARENAS SÁNCHEZ ENRIQUE","ARZAMENDI PÉREZ SERGIO ROBERTO","ÁVILA NÚÑEZ MARÍA DEL ROCÍO","BAÑUELOS SAUCEDO ÁNGEL LEONARDO","BÁRCENAS ESCOBAR MARTÍN","BARRERA DEL RAYO FRANCISCO","BRAVO HERNÁNDEZ VIOLETA LUZ MARÍA","BRAVO OLMOS AIDEE","CABALLERO LÓPEZ HORTENCIA","CASAR MARCOS GUILLERMO","CASTAÑEDA DE ISLA PUGA JAIME ÉRIK","CASTILLO CORTÉS FRANCISCO JOSÉ","CEDEÑO VÁZQUEZ JUAN CARLOS","CHÁVEZ GASCA MILTON GABRIEL","CORTÉS ROSAS JESÚS JAVIER","CRAIL CORZAS SERGIO CARLOS","DE LA MORA MOJICA MARÍA BEATRIZ","ENRÍQUEZ SOLÍS ADRIANA ALEJANDRA","ESCALANTE ROSAS RAÚL","ESPONDA CASCAJARES ALICIA MARIA","FLORES CRUZ ESTHER","FLORES MUÑOZ YEZMÍN","FLORES ZÁRATE RIGOBERTO","GÁMEZ LEAL RIGEL","GARCÍA BURGOS SALVADOR","GARCÍA CASANOVA VERÓNICA HIKRA","GARCÍA Y COLOMÉ PABLO","GÓMEZ - JOEL","GÓMEZ RAMÍREZ MARCO ANTONIO","GONZÁLEZ CÁRDENAS MIGUEL EDUARDO","GONZÁLEZ LÓPEZ SANTIAGO","GUZMÁN VARGAS ERICA","HINOJOSA ROJAS RUBÉN","JARAMILLO MORALES GABRIEL ALEJANDRO","JIMÉNEZ VELASCO MARIO","JURADO PINEDA MAYVERENA","LÓPEZ ACOSTA NORMA PATRICIA","LÓPEZ COYOTE MÓNICA","LÓPEZ RODRÍGUEZ ADÁN TONATIUH","LÓPEZ TÉLLEZ EDGAR RAYMUNDO","LUNA CAMACHO MARGARITA","LUNA ROJERO ERICK EMANUEL","MALDONADO SUSANO M. DEL CARMEN","MALFAVÓN MARTÍNEZ SARA MARTHA","MANZANAREZ GÓMEZ NAYELLI","MARTÍNEZ ÁVALOS RAQUEL","MARTÍNEZ BAUTISTA ABRAHAM LAURENCIO","MARTÍNEZ GÓMEZ RICARDO","MINAMI KOYAMA YUKIHIRO","MIRANDA CORDERO LORENZO OCTAVIO","MORA GARCÍA HÉCTOR","MOZO RAMOS EDGAR SENOBIO","OCÁRIZ CASTELAZO JUAN MARÍA DE LA SALUD","ORTEGA BARBOSA MARÍA GUADALUPE","ORTIZ GÓMEZ ARNULFO","PATIÑO RAMÍREZ JESÚS ANTONIO","PÉREZ LARA CATARINO FERNANDO","PÉREZ LEÓN ANTONIA DEL CARMEN","PÉREZ MARTÍNEZ ANA LAURA","PINEDA FIGUEROA CARLOS ALBERTO","PINEDA FIGUEROA JOSÉ ADOLFO","PINEDA RAMÍREZ ALICIA","PINILLA MORÁN VÍCTOR DAMIÁN","POZOS ESTRADA ADRIÁN","PRIETO MELÉNDEZ RAFAEL","PUENTE MANCILLA RAÚL","RAMÍREZ ROMERO GLORIA","RAMÍREZ Y VILLA ANDRÉS BASILIO","REYES CORTÉS JAIME ALFONSO","RODRÍGUEZ CHÁVEZ ROSALBA","RODRÍGUEZ DURÁN MARÍA OFELIA","RODRÍGUEZ MANDUJANO CYNTHIA SOFÍA","RODRÍGUEZ PALACIOS DARÍO EDUARDO","ROJAS TAPIA ALEJANDRO","ROSAS LANDA LOUSTAU EMILYE","RUIZ MEDINA JESÚS EDMUNDO","SALAZAR MORENO ALFONSO","SALGADO RODRÍGUEZ JOSÉ FRANCISCO","SÁNCHEZ RODRÍGUEZ FERNANDO","SÁNCHEZ SALINAS MARÍA SARA VALENTINA","SERRANO MIRANDA HUGO GERMÁN","SILVA GONZÁLEZ FRANCISCO LEONEL","SOLÍS UBALDO RODOLFO","SORIANO SÁNCHEZ LUIS HUMBERTO","URSUL SOLANES JUAN","VACIO GONZÁLEZ MANUEL DE JESÚS","VALDEZ Y ALFARO IRENE PATRICIA","VÁZQUEZ LORENZANA CÉSAR","VÁZQUEZ SEGOVIA LUIS CÉSAR","VELÁZQUEZ TORRES JUAN","VILLALOBOS PÉREZ SALVADOR ENRIQUE","WELLENS PURNAL ANN GODELIEVE"] //webprofes
    let table111:[String] = [""] //asesorias linea
    var opcion:[Int]?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch opcion![0] {
        case 0:
            if isSearching{
                return buscado0.count
            }else{
                return table00.count
            }
        case 1:
            if isSearching{
                return buscado1.count
            }else{
                return table1.count
            }
        case 2:
            if isSearching{
                return buscado2.count
            }else{
                return table2.count
            }
        case 3:
            if isSearching{
                return buscado3.count
            }else{
                return table3.count
            }
        case 4:
            if isSearching{
                return buscado4.count
            }else{
                return table4.count
            }
        case 5:
            if isSearching{
                return buscado5.count
            }else{
                return table5.count
            }
        case 6:
            if isSearching{
                return buscado6.count
            }else{
                return table6.count
            }
        case 7:
            if isSearching{
                return buscado7.count
            }else{
                return table7.count
            }
        case 8:
            if isSearching{
                return buscado8.count
            }else{
                return table8.count
            }
        case 9:
            if isSearching{
                return buscado9.count
            }else{
                return table9.count
            }
        case 10:
            if isSearching{
                return buscado10.count
            }else{
                return table10.count
            }
        default:
            if isSearching{
                return buscado8.count
            }else{
                return table8.count
            }
        }
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
        tabla.reloadData()
    }
    let ArregloCeldas:[UITableViewCell] = [UITableViewCell]()
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch opcion![0] {
        case 0:
            if isSearching{
                let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
                celda.textLabel?.text = buscado0[indexPath.row]
                return celda
            }else{
                let celda = UITableViewCell(style:UITableViewCell.CellStyle.value1,reuseIdentifier:"ejem")
                celda.textLabel?.text = table0[indexPath.row]
                celda.detailTextLabel?.text = NumSerie[indexPath.row]
                return celda
            }
            
        case 1:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado1[indexPath.row]
            }else{
                celda.textLabel?.text = table1[indexPath.row]
            }
            return celda
        case 2:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado2[indexPath.row]
            }else{
                celda.textLabel?.text = table2[indexPath.row]
            }
            return celda
        case 3:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado3[indexPath.row]
            }else{
                celda.textLabel?.text = table3[indexPath.row]
            }
            return celda
        case 4:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado4[indexPath.row]
            }else{
                celda.textLabel?.text = table4[indexPath.row]
            }
            return celda
        case 5:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado5[indexPath.row]
            }else{
                celda.textLabel?.text = table5[indexPath.row]
            }
            return celda
        case 6:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado6[indexPath.row]
            }else{
                celda.textLabel?.text = table6[indexPath.row]
            }
            return celda
        case 7:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado7[indexPath.row]
            }else{
                celda.textLabel?.text = table7[indexPath.row]
            }
            return celda
        case 8:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado8[indexPath.row]
            }else{
                celda.textLabel?.text = table8[indexPath.row]
            }
            return celda
        case 10:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado10[indexPath.row]
            }else{
                celda.textLabel?.text = table10[indexPath.row]
            }
            return celda
        default:
            let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier:"ejem")
            if isSearching{
                celda.textLabel?.text = buscado0[indexPath.row]
            }else{
                celda.textLabel?.text = table00[indexPath.row]
            }
            return celda
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch opcion![0]{
        case 0:
            if isSearching{
                opcion![1] = dictionary[buscado0[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 1:
            if isSearching{
                opcion![1] = dictionary[buscado1[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 2:
            if isSearching{
                opcion![1] = dictionary[buscado2[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 3:
            if isSearching{
                opcion![1] = dictionary[buscado3[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 4:
            if isSearching{
                opcion![1] = dictionary[buscado4[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 5:
            if isSearching{
                opcion![1] = dictionary[buscado5[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 6:
            if isSearching{
                opcion![1] = dictionary[buscado6[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 7:
            if isSearching{
                opcion![1] = dictionary[buscado7[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 8:
            if isSearching{
                opcion![1] = dictionary[buscado8[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 9:
            if isSearching{
                opcion![1] = dictionary[buscado9[indexPath.row]] ?? 1
            }else{
                opcion![1] = indexPath.row
            }
            self.performSegue(withIdentifier: "PDFSelected", sender: opcion)
            tableView.deselectRow(at: indexPath, animated: true)
            break
        case 10:
            if isSearching{
                guard let requestUrl = NSURL(string: PDFWebProfes[dictionary[buscado10[indexPath.row]]!]) else {
                    return
                }
                tableView.deselectRow(at: indexPath, animated: true)
                UIApplication.shared.openURL(requestUrl as URL)
            }else{
                guard let requestUrl = NSURL(string: PDFWebProfes[indexPath.row]) else {
                    return
                }
                tableView.deselectRow(at: indexPath, animated: true)
                UIApplication.shared.openURL(requestUrl as URL)
            }
            break
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PDFSelected"{
            (segue.destination as! PDF).opcionselected = sender as? [Int]
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        dismissKeyboard()
    }
    override func viewDidLoad() {
        cargar()
        automaticallyAdjustsScrollViewInsets = false
        self.hideKeyboardWhenTappedAround()
        navigationController?.navigationBar.barStyle = .black
        self.title = contenidoCeldasss[opcion![0]]
        filtrados=table0
        super.viewDidLoad()
}
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
extension String {
    var forSorting: String {
        let simple = folding(options: [.diacriticInsensitive, .widthInsensitive, .caseInsensitive], locale: nil)
        let nonAlphaNumeric = CharacterSet.alphanumerics.inverted
        return simple.components(separatedBy: nonAlphaNumeric).joined(separator: "")
    }
}
