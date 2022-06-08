//
//  AuditionManager.swift
//  CodeStarter-Week5
//
//  Created by mingmac on 2022/06/01.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicatsList: [Person]
    private var passedApplicatsList = [Person]()
    
    init(totalApplicatsList: [Person]) {
        self.totalApplicatsList = totalApplicatsList
    }
    
    mutating func cast() {
        passedApplicatsList += totalApplicatsList.compactMap {
            if let applicantPersonality = $0 as? TalentedPersonWithBadPersonality, applicantPersonality.isPass() {
                return $0
            }
            guard let applicantTalent = $0 as? TalentedPerson, applicantTalent.isPass() else {
                return nil
            }
            return $0
        }
    }
    
    func announcePassedApplicants() {
        let passList = passedApplicatsList.map { $0.name }.joined(separator: "\n")
        print("""
            ---합격자 명단---
            \(passList)
            --------------
            축하합니다!!
            """)
    }
}
