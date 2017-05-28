//
//  ViewController.swift
//  Swift App
//
//  Created by Mark on 5/28/17.
//  Copyright © 2017 Mark Hursh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var state = 0
    var counter = 0

    @IBOutlet weak var countTapsLabel: UILabel!
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    @IBAction func pushMePressed(_ sender: Any) {
        self.view.backgroundColor = UIColor.darkGray
        theLabel.text = "Buttons are cool"
        counter += 10
        print(counter)
        countTapsLabel.text = "Counter = \(counter)"
        
    }
    @IBAction func updateButton(_ sender: Any) {
        
        if (state == 0) {
            theLabel.text = "Hello Katie and Erin!"
            buttonLabel.setTitle("Oh wow, you did it!", for: UIControlState.normal)
            self.view.backgroundColor = UIColor.lightGray
            state = 1
        } else {
            theLabel.text = "Hello World"
            buttonLabel.setTitle("Push Me, I Dare you!", for: UIControlState.normal)
            self.view.backgroundColor = UIColor.white
            state = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

