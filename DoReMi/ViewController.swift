//
//  ViewController.swift
//  DoReMi
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource

class ViewController: UIViewController, UITableViewDataSource {

    // MARK: Properties
    
    // Use this string property as your reuse identifier, 
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "NotesIdentifier"
    
    // Choose some data to show in your table
    
    let notesModel = [
        ["note" : "Do", "verse" : "A deer. A female deer."],
        ["note" : "Re", "verse" : "A drop of golden sun."],
        ["note" : "Mi", "verse" : "A name, I call myself."],
        ["note" : "Fa", "verse" : "A long long way to run."],
        ["note" : "So", "verse" : "A needle pulling thread."],
        ["note" : "La", "verse" : "A note to follow So."],
        ["note" : "Ti", "verse" : "A drink with jam and bread."]
    ]
    
    // MARK: UITableViewDataSource
    
    // Add the two essential table data source methods here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Implement method to return the correct number of rows.
        return notesModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: Implement method to return cell with the correct reuseidentifier and populated with the correct data.
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
        let dictionaryEntry = notesModel[(indexPath.row)]
        cell?.textLabel?.text = dictionaryEntry["note"]
        cell?.detailTextLabel?.text = dictionaryEntry["verse"]
        return cell ?? UITableViewCell()
    }
    
}
