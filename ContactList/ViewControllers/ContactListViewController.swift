//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Igor on 18.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let persons = Person.getPersonList()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactVC = segue.destination as? ContactViewController
        contactVC?.person = sender as? Person
    }
    

    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}


//MARK: - UITableViewDelegate
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = persons[indexPath.row]
        performSegue(withIdentifier: "showContactVC", sender: contact)
    }

}
