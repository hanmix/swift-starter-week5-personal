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
let normalPerson = Person(name: "일반인", height: 180)
let guitarman = TalentedPerson(name: "기타맨", height: 179, singing: .A, dancing: .B, acting: .B)
let iphoneLover = Person(name: "아이퐁살앙해", height: 170)
//let mySon = Person(name: "nalgangdo", height: 10000)
let applicants = [choPsy, dancingMachine, justBadGuy, normalPerson, guitarman, iphoneLover]
var auditionManager = AuditionManager(totalApplicatsList: applicants)

auditionManager.cast()
//let hacker = Hacker()
//hacker.hackPassedApplicantsList()
auditionManager.announcePassedApplicants()
