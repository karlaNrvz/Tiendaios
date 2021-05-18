//
//  ViewController.swift
//  TiendaApp
//
//  Created by Viamatica S.A. on 5/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextFieldEmail: UITextField!
    @IBOutlet weak var textFieldPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signIn(_ sender: Any) {
        if TextFieldEmail.text == "" || textFieldPass.text == "" {
        
            print("Es necesario llenar todos los campos")
            
        }else{
            
            performSegue(withIdentifier: "idTab",sender: nil)

        }
           // loadData()
    
    }
    
    func loadData(){
        //crea NSURL
           let requestURL = URL(string: " https://rolimapp.com:3000/usuarios")

           //crea NSMutableURLRequest
           let request = NSMutableURLRequest(url: requestURL! as URL)

           //configura el método de envío
           request.httpMethod = "POST";

           //variables obtenidas de los campos de texto

           let usuarioD = TextFieldEmail.text!
           let nombreD = textFieldPass.text!
        let transaccion="autenticarUsuario"

           //parámetros a enviar
           let postParameters = "transaccion="+transaccion+"&usuario="+usuarioD+"&nombre="+nombreD;

           //agrega los parámetros a la petición
           request.httpBody = postParameters.data(using: String.Encoding.utf8)


           //crea una tarea que envía la petición post
           let task = URLSession.shared.dataTask(with:request as URLRequest){
               data, response, error in

               //si ocurre algún error sale
               if error != nil{
                   print("Error")
                   return;
               }

           }
           //ejecuta la tarea
            print("hola")
           task.resume()
        
    }
    
   
}

