//
//  ViewController.swift
//  Emoji App
//
//  Created by Samuel Leicht on 2019-08-21.
//  Copyright © 2019 Crap Tools. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
    
    var emojis = ["😃", "🐦", "🇨🇦", "🥳", "🥰", "🤓", "🤷🏻‍♂️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.dataSource = self
        mainTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
}
