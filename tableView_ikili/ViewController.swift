//
//  ViewController.swift
//  tableView_ikili
//
//  Created by Berat Yavuz on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewUlkeler: UITableView!
    @IBOutlet weak var tableViewSehirler: UITableView!
    var ulkeler:[String] = [String]()
    var sehirler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Angola","Bahamalar","Norveç","Romanya","Meksika"]
        sehirler = ["Şam","Halep","Bükreş","Oslo","Zonguldak"]
        
        tableViewUlkeler.delegate = self
        tableViewUlkeler.dataSource = self
        
        tableViewSehirler.delegate = self
        tableViewSehirler.dataSource = self
        
    }
    

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var veriSayisi:Int?
        if tableView == tableViewUlkeler {
            veriSayisi = ulkeler.count
        }
        if tableView == tableViewSehirler {
            veriSayisi = sehirler.count
        }
        return veriSayisi!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
    
        if tableView == tableViewUlkeler {
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkeHucre", for: indexPath)
            cell?.textLabel?.text = ulkeler[indexPath.row]
        }
        if tableView == tableViewSehirler {
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkeSehir", for: indexPath)
            cell?.textLabel?.text = sehirler[indexPath.row]
        }
    
    
    return cell!
    }

}

