//
//  ViewController.swift
//  Week5AlertAndSegue
//
//  Created by Rania Arbash on 2023-06-05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    
    var theSliderValueFromTheApp = (UIApplication.shared.delegate as! AppDelegate).sliderValue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main View: did load")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("Main View: will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Main View: will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("Main View: did disappear")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "tored" {
            print ("prepare to go to red view controller")
          
            var redVC = segue.destination as! RedViewController
          
            if let goodName = userName.text {
                if goodName.count > 0 {
                    redVC.nameFromMainVC = goodName
                    
                }else {
                    redVC.nameFromMainVC = "No name entered!!"
                }
                
            }
            
        }
        else if segue.identifier == "toblue"
        {
            print ("prepare to go to blue VC ")

            
        }
        
       
    }
    
    
    
    @IBAction func sayHelloClicked(_ sender: Any) {
        
        var name = userName.text
        if let goodName = name{
            if goodName.count > 0 {
                var alert = UIAlertController(title: "Greeting", message: "Hello \(goodName)", preferredStyle: .alert)
             
                var action1 = UIAlertAction(title: "OK", style: .destructive) { action in
                    print("cancel button clicked inside the alert")
                }
                
                var action2 = UIAlertAction(title: "Log In", style: .default) { action in
                    print("log in button clicked in the alert")
                }
                
                alert.addAction(action2)
                
                alert.addAction(action1)
                
                
                present(alert, animated: true)
            }
        }
    }
    
    
    
    @IBAction func changeBGClicked(_ sender: Any) {
        
        var alert = UIAlertController(title: "Changing BG Color", message: "What colour would you want?", preferredStyle: .actionSheet)
     
        var greenAction = UIAlertAction(title: "Green", style: .default) { action in
            self.view.backgroundColor = UIColor.green
        }
        
        var redaction = UIAlertAction(title: "Red", style: .default) { action in
            self.view.backgroundColor = UIColor.red

        }
        
        alert.addAction(UIAlertAction(title: "White", style: .cancel,handler: { action in
            self.view.backgroundColor = UIColor.white

            
        }))
        
        alert.addAction(redaction)
        
        alert.addAction(greenAction)
        
        
        present(alert, animated: true)
    
        
        
    }
    
    
    
    
}

