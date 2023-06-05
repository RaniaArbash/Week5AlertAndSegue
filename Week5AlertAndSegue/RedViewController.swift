//
//  RedViewController.swift
//  Week5AlertAndSegue
//
//  Created by Rania Arbash on 2023-06-05.
//

import UIKit

class RedViewController: UIViewController {

    var myNum = 100
    
    var nameFromMainVC = ""
    var numberFromTheApp = 0.0
    @IBOutlet weak var labelInRedVC: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Red View: did load")
        print("The number \(myNum)")
        labelInRedVC.text = nameFromMainVC
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColortoWhite(_ sender: Any) {
        
        myNum += 100
        
        print("The number \(myNum)")
        
        view.backgroundColor = UIColor.white
    }
    
  
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("Red View: will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Red View: will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("Red View: did disappear")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
