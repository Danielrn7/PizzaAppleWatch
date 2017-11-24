//
//  DatosPedidoController.swift
//  PizzaAppleWatch WatchKit Extension
//
//  Created by Daniel Ramirez on 24/11/17.
//  Copyright © 2017 Daniel Ramirez. All rights reserved.
//

import WatchKit

class DatosPedido: NSObject {
    var tamaño : String
    var masa : String
    var queso : String
    var ingredientes : String
    
    init(t : String, m : String, q : String, i : String){
        tamaño = t
        masa = m
        queso = q
        ingredientes = i
        
    }
    
}
