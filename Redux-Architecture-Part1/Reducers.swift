//
//  AppReducers.swift
//  Redux-Architecture-Part1
//
//  Created by Daniel Bernal on 7/30/20.
//

import Foundation

typealias Reducer<State, Action> = (inout State, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) -> Void {
    
    switch(action) {
        
        case .getAnimal:
            state.currentAnimal = ["Cat",
                                   "Dog",
                                   "Crow",
                                   "Horse",
                                   "Iguana",
                                   "Cow",
                                   "Racoon"]
                .randomElement() ?? ""
        
    }
    
}
