//
//  ContentView.swift
//  PinnedHeaders
//
//  Created by Sezer Tunca on 08/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let teams = [
            [
                "Al Ferrin", "Valentin Diggins", "Odis Troutman",
                "Alexander Geise", "Tyrone Stringer", "Mitchel Grosso",
                "Aldo Catchings", "Xavier Tynes", "Michel Tripoli",
                "Spencer Courter", "Bradly Liner", "Rueben Touchette",
                "Rusty Castenada", "Rudolf Dorfman", "Colby Bhakta"
            ],
            [
                "Jonathan Wyse", "Max Huber", "Sergio Greaney",
                "Lincoln Pazos", "Donovan Ringer", "Dominique Garbett",
                "Mickey Foltz", "Courtney Mcandrew", "Jasper Zwilling",
                "Nicholas Aquino", "Devin Tunney", "Dewitt Coover",
                "Clement Speelman", "Romeo Lindner", "Rodrick Threlkeld"
            ]
        ]
    
    var body: some View {
        NavigationView {
                ScrollView {
                    // 1.
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                        ForEach(0 ..< teams.count) { index in
                           // 2.
                           Section(header: headerView(index)) {
                              ForEach(0 ..< teams[index].count) { member in
                                 // 3.
                                 Text("\(teams[index][member])")
                                        .id(UUID())
                                        .font(.title)
                              }
                           }
                       }
                   }
               }
               .navigationTitle("Pinned Views")
            }
    }
    
    private func headerView(_ index: Int) -> some View {
        Text("Team \(index + 1)")
            .padding()
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
