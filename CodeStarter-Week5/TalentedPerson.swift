//
//  TalentedPerson.swift
//  CodeStarter-Week5
//
//  Created by mingmac on 2022/06/02.
//

import Foundation

class TalentedPerson: Person, Talent {
    let singing: Level
    let dancing: Level
    let acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
    
    func isPass() -> Bool {
        let passLevel = singing.isTalentLevel ||
                        dancing.isTalentLevel ||
                        acting.isTalentLevel
        return passLevel
    }
}

