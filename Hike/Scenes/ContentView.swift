//
//  ContentView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 18/03/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        CardView()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
