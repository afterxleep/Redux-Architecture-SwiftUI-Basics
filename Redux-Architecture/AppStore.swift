//
//  AppStore.swift
//  Redux-Architecture
//
//  Created by Daniel Bernal on 7/30/20.
//

import Foundation

typealias AppStore = Store<AppState, AppAction>
final class Store<State, Action>: ObservableObject {
    
    // Read only access to app state
    @Published private(set) var state: State

    private let reducer: Reducer<State, Action>

    init(initialState: State, reducer: @escaping Reducer<State, Action>) {
        self.state = initialState
        self.reducer = reducer
    }

    // The dispatch function.
    func dispatch(_ action: Action) {
        reducer(&state, action)
    }
}
