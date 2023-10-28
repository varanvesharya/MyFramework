//
//  MyView.swift
//  MyFramework
//
//  Created by Udit Handa on 28/10/23.
//

import Foundation
import UIKit

public class MyView {
    public init() {}
    
    public func log(message: String) {
        print("Log message: ", message)
    }
    
    public func insertFrameworkView(parentView: UIView) -> UIView {
        let customView = UIView()
        customView.frame = CGRect(x: 0, y: 0, width: parentView.frame.width - 30, height: 250)
        customView.backgroundColor = UIColor.black
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        label.center = CGPoint(x: 0, y: 0)
        label.center.x = customView.center.x
        label.center.y = customView.center.y
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.text = "This is my test view."
        customView.addSubview(label)
        customView.center.x = parentView.center.x
        customView.center.y = parentView.center.y
        return customView
    }
}
