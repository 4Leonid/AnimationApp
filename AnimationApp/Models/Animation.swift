//
//  Animation.swift
//  AnimationApp
//
//  Created by EkaterinaP on 06.04.2022.
//

import Spring

struct Animation {
    var preset: String {
        (Spring.AnimationPreset.allCases.map({ "\($0)" })).randomElement()!
    }
    
    var curve: String {
        (Spring.AnimationCurve.allCases.map({ "\($0)" })).randomElement()!
    }
    
    var force: Double {
        Double.random(in: 0...1)
    }
    
    var duration: Double {
        Double.random(in: 0...1)
    }
    
    var delay: Double {
        Double.random(in: 0...1)
    }
    
    static func setValue() -> Animation {
        Animation()
    }
}

//        Animation(
//            preset: (Spring.AnimationPreset.allCases.map({ "\($0)" })).randomElement()!,
//            curve: (Spring.AnimationCurve.allCases.map({ "\($0)" })).randomElement()!,
//            force: Double.random(in: 0...1),
//            duration: Double.random(in: 0...1),
//            delay: Double.random(in: 0...1)
//        )
