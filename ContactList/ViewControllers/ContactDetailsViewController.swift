//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Sosin Vladislav on 04.01.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.name
        phoneLabel.text = "Phone: " + contact.phoneNumber
        emailLabel.text = "Email: " + contact.email
    }
    
}
