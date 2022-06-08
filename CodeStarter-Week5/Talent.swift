//
//  Talent.swift
//  CodeStarter-Week5
//
//  Created by mingmac on 2022/06/01.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
    func isPass() -> Bool
}
