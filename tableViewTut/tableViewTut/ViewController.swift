//
//  ViewController.swift
//  tableViewTut
//
//  Created by Shikhar Sharma on 21/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.delegate = self
        tableView?.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped at indexPath \(indexPath)")
    }
}

var names : [String] = [
    "name1",
    "name2",
    "name3",
    "name4"
]

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }
}

