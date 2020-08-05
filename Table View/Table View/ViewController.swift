//
//  ViewController.swift
//  Table View
//
//  Created by Brian Redmond on 8/4/20.
//  Copyright © 2020 Brian Redmond. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {

    let Violin = ["kit violin","eletric violin","Five string violin","Barouque violin"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Violin.count
    }
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"mycellID")
        cell?.textLabel?.text = Violin[indexPath.row]
        return cell!
    }
}

