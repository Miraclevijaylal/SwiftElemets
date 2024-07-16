//
//  ViewController.swift
//  zoople4
//
//  Created by Vijay Lal on 15/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewer: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var change: UISwitch!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var changeimage: UIButton!
    
    var number = 10
    var index = 0
    var imgarray = ["cute-kittens","camera","flower"]
    override func viewDidLoad() {
        viewer.image = UIImage(named: imgarray.first ?? "")
        super.viewDidLoad()
        properties()
        
    }
    //MARK: - SLIDER
    @IBAction func slider(_ sender: UISlider) {
        let currentvalue = Int(sender.value)
        count.text = "\(currentvalue)"
    }
    @objc func sliderproperties(_ sender: UIButton) {
        slider.thumbTintColor = .green
        slider.minimumTrackTintColor = .yellow
    }
    
    //MARK: - SWITCH ON AND OFF
    @IBAction func onandoff(_ sender: UISwitch) {
        if change.isOn {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .green
        }
    }
    //MARK: - TIME ACTION
    @objc func seconds() {
        
        count.text = "\(number)"
        if number <= 0 {
            btn.isEnabled = false
        } else {
            number -= 1
            btn.isEnabled = true
        }
    }
    func properties() {
        btn.addTarget(self, action: #selector(sliderproperties), for: .touchUpInside)
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(seconds), userInfo: nil, repeats: true)
    }
    @IBAction func changedisplayedimages(_ sender: UIButton) {
        if index < 3 {
            viewer.image = UIImage(named: imgarray[index])
            index += 1
        }
        if index == 3 {
            index = 0
        }
    }
}



