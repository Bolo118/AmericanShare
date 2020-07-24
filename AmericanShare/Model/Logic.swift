//
//  Logic.swift
//  AmericanShare
//
//  Created by Adithep on 7/23/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit


struct Logic {
    
    var zeroButton: UIButton?
    var tenButton: UIButton?
    var twelveButton: UIButton?
    var fifthTeenButton: UIButton?
    var eightTeenButton: UIButton?
    var twentyButton: UIButton?
    
//    init(zeroButton: UIButton, tenButton: UIButton, twelveButton: UIButton, fifthTeenButton: UIButton, eightTeenButton: UIButton, twentyButton: UIButton) {
//        self.zeroButton = zeroButton
//        self.tenButton = tenButton
//        self.twelveButton = twelveButton
//        self.fifthTeenButton = fifthTeenButton
//        self.eightTeenButton = eightTeenButton
//        self.twentyButton = twentyButton
//    }
    
    func defaultColor() {
        zeroButton?.backgroundColor = .clear
        zeroButton?.setTitleColor(#colorLiteral(red: 0.920220077, green: 0.3291076422, blue: 0.4158637524, alpha: 1), for: .normal)
        tenButton?.backgroundColor = .clear
        tenButton?.setTitleColor(#colorLiteral(red: 0.920220077, green: 0.3291076422, blue: 0.4158637524, alpha: 1), for: .normal)
        twelveButton?.backgroundColor = .clear
        twelveButton?.setTitleColor(#colorLiteral(red: 0.920220077, green: 0.3291076422, blue: 0.4158637524, alpha: 1), for: .normal)
        fifthTeenButton?.backgroundColor = .clear
        fifthTeenButton?.setTitleColor(#colorLiteral(red: 0.920220077, green: 0.3291076422, blue: 0.4158637524, alpha: 1), for: .normal)
        eightTeenButton?.backgroundColor = .clear
        eightTeenButton?.setTitleColor(#colorLiteral(red: 0.920220077, green: 0.3291076422, blue: 0.4158637524, alpha: 1), for: .normal)
        twentyButton?.backgroundColor = .clear
        twentyButton?.setTitleColor(#colorLiteral(red: 0.920220077, green: 0.3291076422, blue: 0.4158637524, alpha: 1), for: .normal)
    }
    
    
}
