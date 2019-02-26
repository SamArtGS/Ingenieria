//
//  PDF.swift
//  Fac Ing
//
//  Created by Samuel Arturo Garrido Sánchez on 13/01/19.
//  Copyright © 2019 SamArtGS. All rights reserved.
//

import UIKit
import PDFKit
class PDF: UIViewController,UIWebViewDelegate{
    var opcionselected:[Int]?
    var PDFSeries:[String] = [
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-2/TEMA1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-2/TEMA2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-2/TEMA3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-2/TEMA4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-2/TEMA5.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/series2019-2/TEMA6.pdf",
        /* Series de Álgebra */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/Serie_1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/Serie_2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/Serie_3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/Serie_4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/series/Serie_5.pdf",
        /* Series  de Álgebra Lineal*/
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_5.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/series/tema_6.pdf",
        /* Series de Cálculo Diferencial */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie1_Conicas.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie2_Funciones.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie3_Limites.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie4_Derivada.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie5_VariacionFunciones.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie6_AlgebraVectorial.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/Series/Serie7_RectaPlano.pdf",
        /* Series de Cálculo y Geometría Analítica */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie4.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/Series/Serie5.pdf",
        /* Series de Geometría Analítica */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/series/Serie4.pdf",
        /* Series de Cálculo Integral */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/serie1.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/serie2.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/serie3.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/series/Serie4.pdf",
        /* Series de Cálculo Vectorial*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/FUNCIONES.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/FUNCIONESANALITICAS.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/INTEGRACION.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/SERIEDELAURENT.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/TEOREMADELRESIDUO.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/SERIEDEFOURIER.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/INTEGRALDEFOURIER.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/TRANSFORMADADEFOURIER.pdf",
        /* Series de Matemáticas Avanzadas*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie5.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie6.pdf",
        /* Serie de Análisis Numérico */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie5.pdf",
        /* Series de Ecuaciones Diferenciales */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_1_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_2_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_3_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_4_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_5_EyM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Series/Serie_6_EyM.pdf",
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/EjerciciosSolucion/Ejercicios_Tema_4.pdf",
        /* Series y Ejercicios de Electricidad y Magnetismo */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-F.pdf",
        /* Serie de Ejercicios de física*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-FE.pdf",
        /* Serie de Ejercicios de Física Experimental */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-FF.pdf",
        /* Serie de ejercicios de fundamentos de física */
        
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_1(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_2(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_3(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_4(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_5(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_6(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_7(2019-2).pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/series/Serie_8(2019-2).pdf",
        /* Serie de ejercicios de Química */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie1_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie3_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/Serie4_STEM_y_FTEM.pdf",
        /*Serie de F. de termo y electro*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie1_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie3_STEM_y_FTEM.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/Serie4_STEM_y_FTEM.pdf",
        /*Serie de S. de termo y electro*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie1Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie2Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie3Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie4Cyd.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Series/Serie5Cyd.pdf",
        /*Serie de Cinemática y dinámica */
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie1Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie2Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie3Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie4Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie5Estatica.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Series/Serie6Estatica.pdf",
        /*Serie de Estática*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/p_serie_5.pdf",
        /*Serie de Probabilidad*/
        
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_1.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_2.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_3.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_4.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_5.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Series/e_serie_6.pdf"
        /*Serie de Estadística*/
    ]
    var PDFAsesoria:[String] = [
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        
    
    
    ]
    var PDFPAsig:[String] = [
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/planeacion2019-1/PLAN1120.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/planeacion/plan1220.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoDiferencial/documents/planeacion/temario.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/planeacion/temario.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/GeometriaAnalitica/documents/planeacion/temario.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/planeacion/programa.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/planeacion/plan1321.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Documentos/Programa2016.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Documentos/temario2016.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Documentos/programa2016.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Plan2006/TemarioEyM2006.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioF.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioFE.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioFF.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/temarios_asignatura/quimica%201216.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Documentos/programaAsignatura.pdf",
        "http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Termodinamica/materias/sistemastermo/programa_asignatura.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Documentos/cinematica_y_dinamica2016.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Documentos/Estatica2016.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Documentos/Temario_P.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Documentos/Temario_E.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/Documentos/Mecanica2016.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/D/Documentos/TemarioD.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Documentos/Temario_FE.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Documentos/Temario_PyE.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioAyO2016.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyO/Documentos/TemarioEMO.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioFM.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioFO.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioBF.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Termodinamica/materias/termo2015/programa_asignatura.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Temarios/TemarioIFES.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Documentos/programaAsignatura.pdf"
        ]
    
    @IBOutlet var Indicador: UIActivityIndicatorView!
    var PDFTallerEjercicios:[String] = [""]
    var PDFReglamentos:[String] = [
        "http://dcb.ingenieria.unam.mx/wp-content/uploads/Documentos/Reglamento_labTall.pdf",
        "https://www.defensoria.unam.mx/publicaciones/Gu%C3%ADa_de_derechos_UNAM_214.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/uploads/Documentos/ReglamentoGraldeInscripciones.pdf",
        "http://www.ingenieria.unam.mx/planeacion/planes/normatividadUnam/RGE.pdf",
        "http://dcb.ingenieria.unam.mx/wp-content/uploads/Documentos/NoFumadores.pdf",
        "http://servacad.ingenieria.unam.mx/_adicionales/titulacion/Reglamento_Opciones_de_Titulacion.pdf",
        "http://servacad.ingenieria.unam.mx/_adicionales/titulacion/Instructivo_Examen.pdf",
        "http://servacad.ingenieria.unam.mx/_adicionales/titulacion/Instructivo_Ceremonia.pdf"]
    var PDFConferencias:[String] = ["http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5027.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5036.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5029.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5035.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5032.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5033.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5030.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5034.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5037.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5028.pdf","http://basicas.fi-c.unam.mx/dcb_sii/public/files/calendario_actividades/2019-2_5031.pdf"]
    
    var PDFManuales:[String] = ["http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/MADO/MADO-10_AyO.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Plan2016/MADO15.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyO/Documentos/MADO-16-EMO.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/MADO/MADO-07-F.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/MADO/MADO-09-FE.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Documentos/practicas.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/MADO/MADO-08-FF.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/MADO/MADO-11_FO.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Quimica/lab_quimica/MADO-12%20(2019-2).pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/FisicaQuimica/Termodinamica/materias/termo2006/practicas.pdf",""]
    var PDFExPasados:[String] = ["http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/examenes/1EF2016-2%20A.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/examenes/1EF2016-2%20B.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/examenes/2EF2016-2.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/examenes/1EF2019-1%20A.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/Algebra/documents/examenes/1EF2019-1%20B.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/examenes/2018_2B.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/examenes/2018_2C.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/examenes/2018_2S.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/examenes/1EF17-1A.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/examenes/1EF17-1C.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/examenes/2EF17-1.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/material/S1EFA18-2.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/material/S1EFC18-2.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/material/2EFAB18-1_dos.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/examenes/PFA_2016-2.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoGeometriaAnalitica/documents/examenes/SFA_2016-2.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Examenes/2017-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Examenes/2018-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Examenes/Finales/1EF/1EF_2019-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Examenes/Finales/1EF/1EF_2018-2_TV_C2006.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Examenes/Finales/2EF/2EF_2018-2.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Examenes/Finales/2EF/2EF_2019-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/Examenes/1FM_2018-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/Examenes/2F_2018-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/CyD/Examenes/Primer%20Final%202018-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/M/E/Examenes/2018-1/Primer%20Final%202018-1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Examenes/2017-2/SOL_1EF_PROB_MAT_18_1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Examenes/2017-2/SOL_2EF_est_18_1.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Examenes/2017-2/PROBA_2EF_2018-1solucion.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/PyE/Examenes/2017-2/SOL_2EF_est_18_1.pdf"]
    
    var PDFExPasadosEx:[String] = ["http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/AlgebraLineal/documents/examenes/2018_2E.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/examenes/1EE11_2.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoIntegral/documents/examenes/1EE11_1.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/material/1EEA18-1.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/material/1EEA18-1.pdf","http://dcb.fi-c.unam.mx/CoordinacionesAcademicas/Matematicas/CalculoVectorial/documents/material/S2EE18-2.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Examenes/Extraordinarios/1EE/1EE_15-2.pdf","http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Examenes/Extraordinarios/1EE/1EE_16-1.pdf"]
    
    
    
    
    
    
    
    
    
    
    var PDFWebProfes:[String] = ["http://djasul.mex.tl/intro.html","http://profesores.dcb.unam.mx/users/isabelpaj/","https://unamfi.wixsite.com/mis-cursos-cam","http://andrew.cienciaseingenieria.mx/","http://profesores.dcb.unam.mx/users/alvarezga","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://profesores.dcb.unam.mx/users/miriamas/","http://profesores.dcb.unam.mx/users/enriqueas/","http://sites.google.com/site/materialserarz/","http://profesores.dcb.unam.mx/users/rocioan/","http://profesores.dcb.unam.mx/users/angellbs/","https://sites.google.com/site/princtermo/","https://sites.google.com/view/franciscobarrerar","http://profesores.dcb.unam.mx/users/violetabh/","http://profesores.dcb.unam.mx/users/aideebo/","http://profesores.dcb.unam.mx/users/hortenciacl","http://profesores.dcb.unam.mx/users/guillermocm/","http://profesores.dcb.unam.mx/users/erikcip/","http://profesores.dcb.unam.mx/users/franciscojcc/","http://profesores.dcb.unam.mx/users/juanccv/","http://profesores.dcb.unam.mx/users/miltonchg/","http://www.ingenieria.unam.mx/~aulaweb/","http://profesores.dcb.unam.mx/users/scarloscc","http://www.ccadet.unam.mx/secciones/depar/sub3/fopede/semb/MBMM.html","http://profesores.dcb.unam.mx/users/adrianaaes/","http://profesores.dcb.unam.mx/users/rauler/","http://www.esponda.org/","http://profesores.dcb.unam.mx/users/estherfc/","http://dimei.fi-b.unam.mx/~beta/algebra/","http://profesores.dcb.unam.mx/users/rigobertofz","http://profesores.dcb.unam.mx/users/rigelgl/","http://profesores.dcb.unam.mx/users/salvadorgb/","http://profesores.dcb.unam.mx/users/veronicahgc/","http://www.ingenieria.unam.mx/~colomepg/","http://profesores.dcb.unam.mx/users/joelg/","http://profesores.dcb.unam.mx/users/marcog/","http://profesores.dcb.unam.mx/users/miguelegc/","http://profesores.dcb.unam.mx/users/santiagogl/","http://profesores.dcb.unam.mx/users/ericagv/","http://profesores.dcb.unam.mx/users/rubenhr/","http://profesores.dcb.unam.mx/users/gabrieljm/","http://profesores.dcb.unam.mx/users/mariojv/","http://profesores.dcb.unam.mx/users/mayverenajp","http://profesores.dcb.unam.mx/users/normapla/","http://profesoramlc.wordpress.com/","http://profesores.dcb.unam.mx/users/adanlr/","http://edgar09.mex.tl/","http://profesores.dcb.unam.mx/users/margaritalc/","http://profesores.dcb.unam.mx/users/ericklr/Index.html","http://profesores.dcb.unam.mx/users/mariacms/","http://profesores.dcb.unam.mx/users/sarammm/","http://profesores.dcb.unam.mx/users/nayellimg/","http://www.paginaspersonales.unam.mx/academicos/datoscontacto/alias:raquelmartinez","http://profesores.dcb.unam.mx/users/abrahammb/","http://profesores.dcb.unam.mx/users/ricardomg","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://profesores.dcb.unam.mx/users/yukihiro/prof/","https://sites.google.com/site/cihectormg/home","http://profesores.fi-b.unam.mx/mozo/","http://profesores.dcb.unam.mx/users/juanoc/","http://profesores.dcb.unam.mx/users/mariagob/","http://profesores.dcb.unam.mx/users/arnulfoog/","http://profesores.dcb.unam.mx/users/jesusapr/","http://profesores.dcb.unam.mx/users/catarinofpl/","http://profesores.dcb.unam.mx/users/antoniapl/","http://profesores.dcb.unam.mx/users/analaur d apm/","http://zoonico.freehostia.com/","http://jaima.freehostia.com/moodle","http://profesores.dcb.unam.mx/users/aliciapr/","http://cozumel.fi-a.unam.mx/~pinilla/","http://profesores.dcb.unam.mx/users/adrianpe/","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://profesores.dcb.unam.mx/users/raulpm/","http://profesores.dcb.unam.mx/users/gloriarr/","http://www.paginaspersonales.unam.mx/acad/andresbasilioramirez/presentacions","http://profesores.fi-b.unam.mx/jareyc/","http://profesores.dcb.unam.mx/users/rosalbarch","http://profesores.dcb.unam.mx/users/mariaord/","http://profesores.dcb.unam.mx/users/cynthiarm/","http://profesores.dcb.unam.mx/users/dariorp/","http://profesores.dcb.unam.mx/users/alejandrort/","http://profesores.dcb.unam.mx/users/emilyerll/","http://profesores.dcb.unam.mx/users/jesuserm/","http://goo.gl/WUqQNq","http://www.jfsr.com.mx/","http://profesores.dcb.unam.mx/users/fernandos","http://profesores.dcb.unam.mx/users/mariasvss/","http://profesores.dcb.unam.mx/users/mariasvss/","http://profesores.dcb.unam.mx/users/yukihiro/prof/","http://www.paginaspersonales.unam.mx/academicos/datosContacto/alias:franciscoleonelsilva","http://profesores.dcb.unam.mx/users/rodolfosu/","http://profesores.dcb.unam.mx/users/luishss","http://www.ursularias.com/URSUL.htm","http://profesores.dcb.unam.mx/users/manueldjvg/","http://dcb.fi-c.unam.mx/profesores/irene/","https://sites.google.com/site/c354rvl/","http://www.ingenieria.unam.mx/~luiscvs/","http://profesores.dcb.unam.mx/users/juanvt","http://profesores.dcb.unam.mx/users/salvadorevp/","http://www.ingenieria.unam.mx/sistemas/semblanzas/AGWP.php"]
    func webViewDidStartLoad(_ webView: UIWebView){
        Indicador.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView){
        Indicador.stopAnimating()
    }
    var urss: String?
    @IBOutlet var PDFView: UIWebView!
    override func viewDidLoad() {
        self.navigationController?.hidesBarsOnTap = true
        PDFView.delegate = self
       Indicador.hidesWhenStopped = true
        navigationController?.navigationBar.barStyle = .black
        switch opcionselected![0] {
        case 0:
            let url : NSURL! = NSURL(string: PDFSeries[opcionselected![1]])
            urss = PDFSeries[opcionselected![1]]
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
            break
        case 1:
            //let url : NSURL! = NSURL(string: PDFAsesoria[opcionselected![1]])
            super.viewDidLoad()
            break
        case 2:
            let url : NSURL! = NSURL(string: PDFTallerEjercicios[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            urss = PDFTallerEjercicios[opcionselected![1]]
            PDFView.scalesPageToFit = true
            super.viewDidLoad()
            break
        case 3:
            let url : NSURL! = NSURL(string: PDFReglamentos[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            urss = PDFReglamentos[opcionselected![1]]
            super.viewDidLoad()
            break
        case 4:
            let url : NSURL! = NSURL(string: PDFPAsig[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            urss = PDFPAsig[opcionselected![1]]
            super.viewDidLoad()
            break
        case 5:
            let url : NSURL! = NSURL(string: PDFConferencias[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            urss = PDFConferencias[opcionselected![1]]
            super.viewDidLoad()
            break
        case 6:
            let url : NSURL! = NSURL(string: PDFManuales[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            urss = PDFManuales[opcionselected![1]]
            super.viewDidLoad()
            break
        case 7:
            let url : NSURL! = NSURL(string: PDFExPasados[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
           urss = PDFExPasados[opcionselected![1]]
            break
        case 8:
            let url : NSURL! = NSURL(string: PDFExPasadosEx[opcionselected![1]])
            PDFView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
            PDFView.scalesPageToFit = true
            urss = PDFExPasados[opcionselected![1]]
            break
        case 9:
            break
        case 10:
            guard let requestUrl = NSURL(string: PDFWebProfes[opcionselected![1]]) else {
                return
            }
            
            UIApplication.shared.openURL(requestUrl as URL)
        default:
            let alert = UIAlertController(title: "Error en la conexión", message: "Error", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default) { action in
                
            })
            self.present(alert, animated: true)
            super.viewDidLoad()
        }
    }/*
    @IBAction func print(_ sender: Any) {
        if #available(iOS 11.0, *) {
            let pdfDocument = PDFDocument(url: urss! as URL)
            let printController = UIPrintInteractionController.shared
            let printInfo = UIPrintInfo(dictionary:nil)
            
            printInfo.outputType = UIPrintInfo.OutputType.general
            printInfo.jobName = "Facultad de Ingeniería"
            printController.printInfo = printInfo
            printController.printingItem = pdfDocument
            printController.present(animated: true, completionHandler: nil)
        } else {
        }
    }*/
    
    @IBAction func Share(_ sender: Any) {
        let Activity = UIActivityViewController(activityItems: [URL(string: urss!) as Any], applicationActivities: nil)
        Activity.popoverPresentationController?.sourceView = self.view
        self.present(Activity, animated: true,completion: nil)
    }
    var flag:Bool = false
    func addTapped(_ sender:UIBarButtonItem!){
        print("hola")
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        let alert = UIAlertController(title: "Error en la conexión", message: "Tienes que tener una red de datos móviles", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { action in
            
        })
        let viewTable = storyboard?.instantiateViewController(withIdentifier:"Regresar")
        self.navigationController?.pushViewController(viewTable!, animated: true)
        self.present(alert, animated: true)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AppDelegate.OrientationManager.landscapeSupported = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppDelegate.OrientationManager.landscapeSupported = false
        //The code below will automatically rotate your device's orientation when you exit this ViewController
        if UIDevice.current.userInterfaceIdiom == .phone{
            let orientationValue = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(orientationValue, forKey: "orientation")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
    }
}
extension UIViewController{
    func hidebar()->Bool {
        
         let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissBar))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        return true
    }
    func showbar()->Bool{
        let taps: UITapGestureRecognizer
        taps = UITapGestureRecognizer(target: self, action: #selector(UIViewController.presBar))
        taps.cancelsTouchesInView = false
        view.addGestureRecognizer(taps)
        return false
    }
    @objc func dismissBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
        tabBarController?.tabBar.isHidden = true
    }
    @objc func presBar() {
        navigationController?.navigationBar.isHidden = false
        tabBarController?.tabBar.isHidden = false
    }
}
