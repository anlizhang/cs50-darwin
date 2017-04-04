//
//  CustomColors.swift
//  Final Project CS50Darwin
//
//  Created by Anli Zhang on 12/7/16.
//  Copyright © 2016 Anli Zhang. All rights reserved.
//

import Foundation
import UIKit

let blue = UIColor(hue: 214.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)

var hue = -21

func colorGenerator() -> UIColor {
    hue = (hue + 21) % 360
    
    // prevents colors too similar to blue
    while 200 < hue && hue < 230 {
        hue = (hue + 21) % 360
    }
    
    return UIColor(hue: CGFloat(hue) / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
}

// preset colors
let color1 = UIColor(hue: 0.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color2 = UIColor(hue: 24.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color3 = UIColor(hue: 48.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color4 = UIColor(hue: 72.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color5 = UIColor(hue: 96.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color6 = UIColor(hue: 120.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color7 = UIColor(hue: 144.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color8 = UIColor(hue: 168.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color9 = UIColor(hue: 192.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color10 = UIColor(hue: 216.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color11 = UIColor(hue: 240.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color12 = UIColor(hue: 264.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color13 = UIColor(hue: 288.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color14 = UIColor(hue: 312.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
let color15 = UIColor(hue: 336.0 / 360.0, saturation: 0.73, brightness: 1.0, alpha: 1.0)
