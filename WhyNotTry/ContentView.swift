//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Srinivas Iyer on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors = [Color.blue, Color.red, Color.green, Color.yellow, Color.purple, Color.orange]

   @State private var selected = "Fencing"
    
    @State private var id = 1
    var body: some View {
        VStack {
            Text("Why Not Try?")
                .font(.largeTitle.bold())
        }
        Spacer()
        VStack {
            Circle()
                .fill(colors.randomElement() ?? Color.blue)
                .padding()
                .overlay(Image(systemName: "figure.\(selected.lowercased())")
                    .font(.system(size: 144))
                    .foregroundColor(.white))
            Text("\(selected)!")
                .font(.title)
        }
        .transition(.slide)
        .id(id)
        Spacer()
        
        // change activity
        Button("Next Activity") {
            withAnimation(){
                selected = activities.randomElement() ?? "Archery"
                id += 1
            }
        }
        .buttonStyle(.borderedProminent)    }
        
}

#Preview {
    ContentView()
}
