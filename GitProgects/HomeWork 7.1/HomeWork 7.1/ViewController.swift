//
//  ViewController.swift
//  HomeWork 7.1
//
//  Created by Ференц Алена on 8.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    let myButton = UIButton()
    let myViewSize: CGFloat = 200
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createButton()
        
    }
    private func createButton() {
        myButton.frame = CGRect( x: self.view.frame.width / 2 - myViewSize / 2,
                                 y: self.view.frame.height / 2 - myViewSize / 2,
                                 width: myViewSize,
                                 height: myViewSize)
        myButton.backgroundColor = randomColor()
        myButton.layer.cornerRadius = myViewSize/2
        myButton.setTitle("Press me", for: .normal)
        self.view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        self.view.addSubview(myButton)
        
    }
    @objc func pressButton(){
        myButton.frame.origin = CGPoint(
            x: CGFloat.random(in: 0...self.view.frame.width - myViewSize),
            y: CGFloat.random(in: 0...self.view.frame.height - myViewSize))
        myButton.backgroundColor = randomColor()
    }
    private func randomColor() -> UIColor {
        return UIColor (
            red: CGFloat.random(in:0...1),
            green:CGFloat.random(in:0...1),
            blue: CGFloat.random(in:0...1),
            alpha: 1)
    }
}








