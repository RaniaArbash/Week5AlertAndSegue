//
//  BlueViewController.swift
//  Week5AlertAndSegue
//
//  Created by Rania Arbash on 2023-06-05.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var myblueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func blueClicked(_ sender: Any) {
            
        self.dismiss(animated: true)

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
