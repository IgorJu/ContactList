//
//  ContactViewController.swift
//  ContactList
//
//  Created by Igor on 18.04.2023.
//

import UIKit

final class ContactViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text! += person.phone
        mailLabel.text! += person.email
    }
    
}
