//
//  Home.swift
//  zoople4
//
//  Created by Vijay Lal on 16/07/24.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var bg: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bg.backgroundColor = .gray
        bg.layer.cornerRadius = 50
        bg.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        bg.layer.shadowColor = UIColor.red.cgColor
        bg.layer.shadowRadius = 5
        bg.layer.shadowOpacity = 0.5
        bg.layer.shadowOffset = .zero
    }
    

    

}
