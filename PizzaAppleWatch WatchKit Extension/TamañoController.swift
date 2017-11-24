//
//  TamañoController.swift
//  PizzaAppleWatch WatchKit Extension
//
//  Created by Daniel Ramirez on 24/11/17.
//  Copyright © 2017 Daniel Ramirez. All rights reserved.
//

import WatchKit
import Foundation


class TamanioController: WKInterfaceController {
    
    @IBOutlet var esTamañoGrande: WKInterfaceSwitch!
    @IBOutlet var esTamañoMediano: WKInterfaceSwitch!
    @IBOutlet var esTamañoChico: WKInterfaceSwitch!
    
    var datosPedido : DatosPedido? = nil
    
    var tamañoSeleccionado : Bool = false
    var tamañoSeleccionadoStr : String = ""
    
    @IBAction func changeTamañoGrande(value: Bool) {
        if (value == true){
            esTamañoMediano.setOn(false)
            esTamañoChico.setOn(false)
            tamañoSeleccionado = true
            tamañoSeleccionadoStr = "Grande"
        } else {
            tamañoSeleccionado = false
        }
    }
    
    @IBAction func changeTamañoMediano(value: Bool) {
        if (value == true){
            esTamañoGrande.setOn(false)
            esTamañoChico.setOn(false)
            tamañoSeleccionado = true
            tamañoSeleccionadoStr = "Mediano"
        } else {
            tamañoSeleccionado = false
        }
    }
    
    @IBAction func changeTamañoChico(value: Bool) {
        if (value == true){
            esTamañoGrande.setOn(false)
            esTamañoMediano.setOn(false)
            tamañoSeleccionado = true
            tamañoSeleccionadoStr = "Chico"
        } else {
            tamañoSeleccionado = false
        }
    }
    
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        
        if (segueIdentifier == "tamañoSegue"){
            
            if (tamañoSeleccionado == false){
                showPopup()
            }
            
            datosPedido = DatosPedido(t: tamañoSeleccionadoStr, m: "", q: "", i: "")
            
            pushController(withName: "MasaController", context: datosPedido)
            
            return ["segue":"tamañoSegue", "data": datosPedido!]
            
        } else {
            return nil
        }
    }
    
    
    func showPopup(){
        let h0 = { print("ok")}
        let action1 = WKAlertAction(title: "Aceptar", style: .default, handler:h0)
        presentAlert(withTitle: "Debe seleccionar un tamaño", message: "", preferredStyle: .actionSheet, actions: [action1])
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //WKInterfaceController.reloadRootControllers(withNames: ["TamanioController"], contexts: [])
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
