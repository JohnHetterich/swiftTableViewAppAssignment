//
//  ViewController.swift
//  swiftTableViewAppAssignment
//
//  Created by BHSRam7 on 10/6/16.
//  Copyright © 2016 BHSRam7. All rights reserved.
//
//John Hetterich

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var soccerRoster = ["John Hetterich", "Jude Graf", "Cooper Bucalo", "Matt Schweinefuss", "Patrick Johnson", "Peter Clements", "Luke Vansteinkiste", "Griffen Heintzman", "Gattett Geigle", "Evan Hawes"]

    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self //defines the table
        mainTableView.delegate = self //defines content
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of rows
        return soccerRoster.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //what to do in the cells
        let cell = UITableViewCell()
        cell.textLabel?.text = soccerRoster[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "sender")
    }

}

