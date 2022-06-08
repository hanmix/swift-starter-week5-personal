//
//  Level.swift
//  CodeStarter-Week5
//
//  Created by mingmac on 2022/06/01.
//

import Foundation

enum Level {
    case A, B, C
    
    var isTalentLevel: Bool {
        switch self {
        case .A:
            return true
        case .B, .C:
            return false
        }
    }
    
    var isPersonalityLevel: Bool {
        switch self {
        case .A:
            return false
        case .B, .C:
            return true
        }
    }
}
