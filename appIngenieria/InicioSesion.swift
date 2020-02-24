//
//  InicioSesion.swift
//  appIngenieria
//
//  Created by CEDAM20 on 10/22/19.
//  Copyright © 2019 CEDAM20. All rights reserved.
//

import UIKit

class InicioSesion: UIViewController {
    
    // MARK: - Propiedades
    
    
    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var btnReportError: UIButton!
    @IBOutlet weak var btnHelp: UIButton!
    @IBOutlet weak var btnInicioSesion: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureElements()
    }
    
    //Cambia el color de los iconos (hora, bateria, ...) del iphone a blanco
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    // MARK: - Funciones
    
    func configureElements(){
        btnReportError.layer.cornerRadius = 20.0
        btnHelp.layer.cornerRadius = 20.0
        btnInicioSesion.layer.cornerRadius = 5.0
        
        //Agrega la imagen de fondo.
        let wallpaper = UIImageView(frame: UIScreen.main.bounds)
        wallpaper.image = UIImage(named: "piedra")
        self.view.insertSubview(wallpaper, at: 0)
        
        //Redondea esquinas vista
        vista.layer.cornerRadius = 10.0
    }

    @IBAction func btnHelpTapped(_ sender: Any) {
        Alert.showHelpAlert(on: self)
    }
}
