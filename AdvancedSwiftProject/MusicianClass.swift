//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by Fatih Filizol on 15.09.2022.
//

import Foundation


class MusicianClass {
    var name : String
    var age :Int
    var instrument : String
    
    init(nameInput:String, ageInput: Int, instrumentInput: String){
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
    }
    
    func happyBirthday (){
        self.age += 1
    }
    
}
