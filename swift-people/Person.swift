//
//  Person.swift
//  swift-people
//
//  Created by Tameika Lawrence on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Person {
    
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    
    var qualifiedTutor: Bool {
        if self.skills.count >= 4 {
        return true
        } else {
        return false
        }
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
        
        
    }
    
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    
    var defaultInitPerson = Person(name: "John Doe", ageInYears: nil)
    
    
    
    func celebrityBirthday() -> String {
        
        if ageInYears == nil {
            
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
            
        } else if ageInYears != nil {
            
            if let ageInYears = ageInYears {
                
                var yearsOld = ageInYears
                
                yearsOld += 1
                
                let birthdayOrdinal = yearsOld.ordinal()
                
                return "HAPPY \(yearsOld)\(birthdayOrdinal) BIRTHDAY, \(name.uppercased())!!!"
                
            } else {
                
            }
            
        }
        
        
        return "It's no one's birthday."
    }
    

    func learnSkillBash() {
        if skills.contains("bash") != true {
        skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if skills.contains("Xcode") != true {
        skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if skills.contains("Objective-C") != true {
        skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if skills.contains("Swift") != true {
        skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if skills.contains("Interface Builder") != true {
        skills.append("Interface Builder")
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
