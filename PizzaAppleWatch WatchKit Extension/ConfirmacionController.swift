
//
//  ConfirmacionController.swift
//  PizzaAppleWatch WatchKit Extension
//
//  Created by Daniel Ramirez on 24/11/17.
//  Copyright © 2017 Daniel Ramirez. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionPedidoController: WKInterfaceController {
    
    var datosPedido : DatosPedido? = nil
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        datosPedido = ((context as! NSDictionary)["data"] as? DatosPedido)!
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        
        if (segueIdentifier == "confirmarSegue"){
            datosPedido = DatosPedido(t: (datosPedido?.tamaño)!, m: (datosPedido?.masa)!, q: (datosPedido?.queso)!, i: (datosPedido?.ingredientes)!)
            
            pushController(withName: "FinPedidoController", context: datosPedido)
            
            return ["segue":"confirmarSegue", "data": datosPedido!]
            
        } else {
            return nil
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
