//
//  ViewController.swift
//  PathDrawingDemo
//
//  Created by Ahmed Khalaf on 1/2/20.
//  Copyright © 2020 com.ahmedkhalaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var pathView: PathView!
    
    @IBAction private func buttonTapped(_ sender: UIButton) {
        pathView.set(path: UIBezierPath(ovalIn: pathView.bounds), fillColor: .random, strokColor: .random, lineWidth: .random(in: 0...100))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension UIColor {
    static var random: UIColor {
        return UIColor(displayP3Red: .random(in: 0...255) / 255, green: .random(in: 0...255) / 255, blue: .random(in: 0...255) / 255, alpha: .random(in: 0...1))
    }
}
