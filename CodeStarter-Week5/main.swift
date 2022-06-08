//
//  main.swift
//  CodeStarter-Week5
//
//  Created by mingmac on 2022/06/01.
//

import Foundation

let choPsy = TalentedPerson(name: "코사이", height: 170, singing: .C, dancing: .B, acting: .A)
let dancingMachine = TalentedPerson(name: "댄싱머신", height: 167, singing: .A, dancing: .A, acting: .C)
let justBadGuy = TalentedPersonWithBadPersonality(name: "벧가이", height: 180, singing: .A, dancing: .A, acting: .A, frequencyOfCursing: .A)
let applicants = [choPsy, dancingMachine, justBadGuy]
var auditionManager = AuditionManager(totalApplicatsList: applicants)

auditionManager.cast()
auditionManager.announcePassedApplicants()
