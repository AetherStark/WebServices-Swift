//
//  TableViewController.swift
//  WebServiceBitcoin
//
//  Created by Francisco on 22/04/20.
//  Copyright © 2020 Francisco. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
   @IBOutlet var Tabla: UITableView!
    
    var monedasC = [Moneda]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tabla.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return monedasC.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda") as! TableViewCell
        let mon : Moneda
        mon = monedasC[indexPath.row]
    
        cell.lblTitulo.text = mon.description
        cell.lblSubtitulo.text = mon.rate
    
        return cell
    }
    

}
