//
//  ProductosViewController.swift
//  TiendaAplication
//
//  Created by Viamatica S.A. on 5/17/21.
//

import UIKit

class ProductosViewController: UIViewController {

    @IBOutlet weak var cvProductos: UICollectionView!
    let datos:[String] = ["Edredon 1", "Edredon 2" , "Edredon 3"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
                loadData()
    }
    
    
    //carrito-compras-desarrollo-tienda-virtual

}

func loadData(){
    let transaccion :String = "generico"
    let tipo:String="4"
    
        //creaA NSURL
           let requestURL = URL(string: "https://rolimapp.com:3000/productos")

           //crea NSMutableURLRequest
           let request = NSMutableURLRequest(url: requestURL! as URL)

           //configura el método de envío
           request.httpMethod = "POST";

           //variables obtenidas de los campos de texto

         

           //parámetros a enviar
    let postParameters = "transaccion="+transaccion+"&tipo="+tipo;

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
           task.resume()
        
    
    
}

extension ProductosViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.cvProductos.dequeueReusableCell(withReuseIdentifier: "", for: indexPath) as! cellProductos
        cell.imgProducto.image=UIImage(named: "carrito-compras-desarrollo-tienda-virtual")
        cell.lblNombre.text = datos[indexPath.row]
        
        return cell
    }
}

class cellProductos:UICollectionViewCell{
    
    @IBOutlet weak var imgProducto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    
    
}
