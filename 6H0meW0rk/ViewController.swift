//
//  ViewController.swift
//  6H0meW0rk
//
//  Created by Байгелди Акылбек уулу on 13/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var menu:[Shop] = [Shop(photo: "camry", nazva: "Toyota Camry 50", cena: "15 000 $"),Shop(photo: "accord", nazva: "Honda Accord", cena: "6000 $"),Shop(photo: "audi", nazva: "Audi A6", cena: "7000 $"),Shop(photo: "matiz", nazva: "Daewo Matiz", cena: "2300 $")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "product_cell", for: indexPath) as! TableViewCell
        
        cell.imageProduct.image = UIImage(named: "\(menu[indexPath.row].photo)")
        cell.nameProductLabel.text = menu[indexPath.row].nazva
        cell.priceProductLabel.text = menu[indexPath.row].cena
        
        return cell
        
    }
    
    
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
