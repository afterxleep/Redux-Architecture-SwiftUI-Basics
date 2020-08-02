//
//  AnimalView.swift
//  Redux-Architecture
//
//  Created by Daniel Bernal on 7/30/20.
//

import SwiftUI

struct AnimalView: View {
    @EnvironmentObject var store: AppStore
    
    func loadAnimal() {
        store.dispatch(.getAnimal)
    }

    var body: some View {
        VStack {
            Text(store.state.currentAnimal).font(.system(.largeTitle)).padding()
            Button("Tap me", action: { self.loadAnimal() })
        }
    }
}
