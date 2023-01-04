//
//  ViewController.swift
//  ContactList
//
//  Created by Sosin Vladislav on 29.11.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    let contactList = Contact.getContactList()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = contactList[indexPath.row].name
        
        cell.contentConfiguration = content
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.contact = contactList[indexPath.row]
    }
}
