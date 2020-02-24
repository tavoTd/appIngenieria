//
//  Registro.swift
//  appIngenieria
//
//  Created by CEDAM20 on 10/24/19.
//  Copyright © 2019 CEDAM20. All rights reserved.
//

import UIKit

class Registro: UIViewController {

    @IBOutlet weak var btnRegistro: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnRegistro.layer.cornerRadius = 5.0
    }
    
    //Cambia el color de los iconos (hora, bateria, ...) del iphone a blanco
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}
