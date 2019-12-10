//
//  ViewController.swift
//  SO-59274819-URLScheme
//
//  Created by Kiran Thorat on 11/12/19.
//

import SafariServices
import UIKit

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var launchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func launchTap(_ sender: UIButton) {
        guard let url = URL(string: "http://localhost/scheme.php") else {
            print("Unable to create the URL")
            return
        }
        let authorizationController = SFSafariViewController(url: url)
        authorizationController.delegate = self
        present(authorizationController, animated: true, completion: nil)
    }

    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("safari completed")
    }
}

