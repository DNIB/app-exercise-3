//
//  ViewController.swift
//  app-exercise-3
//
//  Created by NDHU_CSIE on 2019/10/30.
//  Copyright © 2019 NDHU_CSIE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let sport_type = ["Basketball", "Football", "Tennis", "Golf"]
    let favorMessage = "My Favorate Sport: "
    
    @IBOutlet weak var favorSport: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sport_type.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = sport_type[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        favorSport.text = favorMessage + sport_type[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: false)
    }

}

