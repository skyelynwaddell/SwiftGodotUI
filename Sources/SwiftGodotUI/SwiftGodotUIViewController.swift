//
//  SwiftGodotUIViewController.swift
//  SwiftGodotUI
//
//  Created by Skye Waddell on 2025-01-29.
//

import UIKit

class SwiftGodotUIViewController: UIViewController {
    
    /// References to .xib button and label
    @IBOutlet weak var btnGoBack : UIButton!
    @IBOutlet weak var lblTitle : UILabel!

    /// Called after successful view load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load the XIB file
        Bundle.main.loadNibNamed("SwiftGodotUIViewController", owner: self, options: nil)
        
        /// Change the text of the title
        lblTitle.text = "My Title"

        /// Set the button to call closeWindow() on touch release
        btnGoBack.addTarget(self, action: #selector(closeWindow), for: .touchUpInside)
    }
    
    /// Function to close the UI window
    @objc func closeWindow(){
        self.dismiss(animated: true,completion: nil)
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
