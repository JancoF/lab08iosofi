//
//  FirstViewController.swift
//  UsodeControlesFlores
//
//  Created by Noe Flores on 22/04/24.
//

import UIKit

class FirstViewController: UIViewController {
   
    @IBOutlet weak var TextNumero1: UITextField!
    @IBOutlet weak var TextRepta: UITextField!
    @IBOutlet weak var TextNumero2: UITextField!
    
    var nro1:Double=0
    var nro2:Double=0
    var rpta:Double=0
 
    @IBAction func btnSumar(_ sender: Any) {
        if Double(TextNumero1.text!) != nil && Double(TextNumero2.text!) != nil {
               nro1 = Double(TextNumero1.text!)!
               nro2 = Double(TextNumero2.text!)!
               rpta = nro1 + nro2
               TextRepta.text = String(rpta)
           }else{
               mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
               print("Error al realizar operacion")
           }
    }
    @IBAction func btnRestar(_ sender: Any) {
        if Double(TextNumero1.text!) != nil && Double(TextNumero2.text!) != nil {
               nro1 = Double(TextNumero1.text!)!
               nro2 = Double(TextNumero2.text!)!
               rpta = nro1 - nro2
               TextRepta.text = String(rpta)
           }else{
               mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
               print("Error al realizar operacion")
           }
    }
    
    @IBAction func btnDividir(_ sender: Any) {
        if Double(TextNumero1.text!) != nil && Double(TextNumero2.text!) != nil {
               nro1 = Double(TextNumero1.text!)!
               nro2 = Double(TextNumero2.text!)!
               rpta = nro1 / nro2
               TextRepta.text = String(rpta)
           }else{
               mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
               print("Error al realizar operacion")
           }
    }
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        if Double(TextNumero1.text!) != nil && Double(TextNumero2.text!) != nil {
               nro1 = Double(TextNumero1.text!)!
               nro2 = Double(TextNumero2.text!)!
               rpta = nro1 * nro2
               TextRepta.text = String(rpta)
           }else{
               mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numericos")
               print("Error al realizar operacion")
           }
    }
    
    @IBAction func btnLimpiar(_ sender: Any) {
        self.TextNumero1.text="0"
        self.TextNumero2.text="0"
        self.TextRepta.text="0"
    }
    
    func Limpiar(){
        self.TextNumero1.text="0"
        self.TextNumero2.text="0"
        self.TextRepta.text="0"
        
    }
    
    @objc func OcultarTeclado (){
        view.endEditing(true)
    }
    
    func mostrarAlerta(titulo: String, mensaje: String) {
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let limpiar = UIAlertAction(title: "Limpiar", style: .default, handler: {(action) in
            self.Limpiar()
    })
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: {(action) in
            //acciones a realizar
    })
        alerta.addAction(limpiar)
        alerta.addAction(cancelar)
        present(alerta, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(OcultarTeclado))
        view.addGestureRecognizer(tap)

       
    }

  
}
