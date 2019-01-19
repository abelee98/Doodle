//
//  PencilColor.swift
//  Doodle
//
//  Created by Abraham Lee on 1/18/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import Foundation
import UIKit

enum Pencil {
    case black
    case grey
    case red
    case blue
    case purple
    case green
    case brown
    case orange
    case yellow
    case eraser
    
    init?(tag: Int) {
        switch tag {
        case 0:
            self = .black
        case 1:
            self = .grey
        case 2:
            self = .red
        case 3:
            self = .blue
        case 4:
            self = .purple
        case 5:
            self = .green
        case 6:
            self = .brown
        case 7:
            self = .orange
        case 8:
            self = .yellow
        case 9:
            self = .eraser
        default:
            return nil
        }
    }
    
    var color: (CGFloat, CGFloat, CGFloat) {
        switch self {
        case .black:
            return (0.0,0.0,0.0)
        case .grey:
            return (128.0,128.0,128.0)
        case .red:
            return (255.0,59.0,48.0)
        case .blue:
            return (0.0,122.0,255.0)
        case .purple:
            return (88.0,86.0,214.0)
        case .green:
            return (76.0,217.0,100.0)
        case .brown:
            return (139.0,69.0,19.0)
        case .orange:
            return (255.0,149.0,0.0)
        case .yellow:
            return (255.0,204.0,0.0)
        case .eraser:
            return (255.0,255.0,255.0)
        }
    }
}

