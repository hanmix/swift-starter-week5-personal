//
//  TalentedPersonBadPersonality.swift
//  CodeStarter-Week5
//
//  Created by mingmac on 2022/06/02.
//

import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    let singing: Level
    let dancing: Level
    let acting: Level
    let frequencyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequencyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequencyOfCursing = frequencyOfCursing
        super.init(name: name, height: height)
    }
    
    func isPass() -> Bool {
        let passLevel = (singing.isTalentLevel ||
                         dancing.isTalentLevel ||
                         acting.isTalentLevel) &&
                         frequencyOfCursing.isPersonalityLevel
        return passLevel
    }
    
}
