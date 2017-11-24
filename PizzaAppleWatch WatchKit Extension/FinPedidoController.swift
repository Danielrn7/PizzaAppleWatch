//
//  FinPedidoController.swift
//  PizzaAppleWatch WatchKit Extension
//
//  Created by Daniel Ramirez on 24/11/17.
//  Copyright © 2017 Daniel Ramirez. All rights reserved.
//

import WatchKit
import Foundation


class FinPedidoController: WKInterfaceController {
    
    @IBOutlet var detallesPedido: WKInterfaceLabel!
    var datosPedido : DatosPedido? = nil
    var textoPedido : String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        datosPedido = ((context as! NSDictionary)["data"] as? DatosPedido)!
        textoPedido += "Masa: " + (datosPedido?.masa ?? "") + "\r\n"
        textoPedido += "Queso: " + (datosPedido?.queso ?? "") + "\r\n"
        textoPedido += "Tamaño: " + (datosPedido?.tamaño ?? "") + "\r\n"
        textoPedido += "Ingredientes: " + (datosPedido?.ingredientes ?? "")
        
        detallesPedido.setText(textoPedido)
        
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func backPressed() {
        print("back button pressed")
    }
}
