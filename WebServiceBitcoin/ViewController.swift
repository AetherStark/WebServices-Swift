//
//  ViewController.swift
//  WebServiceBitcoin
//
//  Created by Francisco on 22/04/20.
//  Copyright © 2020 Francisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
          
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   var monedas = [Moneda]()

    @IBAction func btnConsultar(_ sender: Any) {
        monedas.removeAll()
        let urlWiki = "https://api.coindesk.com/v1/bpi/currentprice.json"
        let urlObjeto = URL(string:urlWiki)
        let tarea = URLSession.shared.dataTask(with: urlObjeto!) { (datos, respuesta, error) in
        if error == nil {
            do{
                let json = try JSONSerialization.jsonObject(with: datos!, options:
                    JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
        
                let querySubJson = json["bpi"] as! [String:Any]
                
                for money in querySubJson {
                    let pagesSubJson = querySubJson[money.key] as! [String:Any]
                    let desc = pagesSubJson["description"] as! String
                    let cod = pagesSubJson["code"] as! String
                    let rat = pagesSubJson["rate"] as! String
                            
                    self.monedas.append(Moneda(description: desc, rate: rat, code: cod ))
                }
                DispatchQueue.main.sync(execute: {
        
                    self.performSegue(withIdentifier: "segue", sender: self)
                })
            }
                catch let jsonErr {
                    print("El Procesamiento del JSON tuvo un error", jsonErr)
                }
        }
        else {
            print(error!)
        }
    }
        tarea.resume()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "segue" {
                let seguex = segue.destination as! TableViewController
            seguex.monedasC = monedas
            
        }
    }
    
}

