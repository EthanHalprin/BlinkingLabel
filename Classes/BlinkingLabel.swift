//
//  File.swift
//  BlinkingLabel
//
//  Created by Ethan Halprin on 30/06/2019.
//

import Foundation

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options = UIView.AnimationOptions.repeat.rawValue | UIView.AnimationOptions.autoreverse.rawValue
        
        UIView.animate(withDuration: 0.25,
                       delay:0.0,
                       options:UIView.AnimationOptions(rawValue: options), animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
