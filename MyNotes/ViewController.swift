//
//  ViewController.swift
//  MyNotes
//
//  Created by DELIVERY on 28/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noteTextView: UITextView!
    
    @IBAction func saveButton(_ sender: Any) {
        if let note = noteTextView.text {
            UserDefaults.standard.set(note , forKey: "Note")
        }
    }
    
    func returnNote () -> String {
        if let noteSaved = UserDefaults.standard.object(forKey: "Note") {
            return noteSaved as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
       // print("User presseioned a button")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        noteTextView.text = returnNote()

    }


}

