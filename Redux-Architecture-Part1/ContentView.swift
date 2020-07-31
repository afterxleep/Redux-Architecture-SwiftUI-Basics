//
//  ContentView.swift
//  Redux-Architecture-Part1
//
//  Created by Daniel Bernal on 7/30/20.
//

import SwiftUI

struct ContentView: View {
    let store = AppStore(initialState: .init(),
                         reducer: appReducer)
    
    init() {
        store.dispatch(.getAnimal)
    }
    
    var body: some View {
        AnimalView()
            .environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
