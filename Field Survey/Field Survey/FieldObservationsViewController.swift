 //
//  FieldObservationsViewController.swift
//  Field Survey
//
//  Created by Alyssa Nielsen on 7/21/17.
//  Copyright © 2017 Alyssa Nielsen. All rights reserved.
//

import UIKit

class FieldObservationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
   
    @IBOutlet weak var fieldObservationsTableView: UITableView!
    
    let fieldObservations = FieldObservationsJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldObservations.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservationCell", for: indexPath)
        
        if let cell = cell as? FieldObservationTableViewCell {
            let fieldObservation = fieldObservations[indexPath.row]
            cell.classificationIconImageView.image = fieldObservation.classification.image
            cell.titleLabel.text = fieldObservation.title
            cell.dateLabel.text = dateFormatter.string(from: fieldObservation.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldObservationDetailViewController,
            let row = fieldObservationsTableView.indexPathForSelectedRow?.row {
            destination.fieldObservation = fieldObservations[row]
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
