//
//  ContentView.swift
//  myApp
//
//  Created by Rita Kattsyna on 9/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    //mock data for testing
    let tasks = [
        "Buy groceries 11:00am",
        "Call mom 2:00pm",
        "Finish project 5:00pm",
        "Gym workout 7:00pm"
    ]
    
    var body: some View {
        ZStack {
            Color(red: 0.82, green: 0.76, blue: 0.71)
                .edgesIgnoringSafeArea(.all)
            VStack {
                TextField("Search Bar...", text: $searchText)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(15)
                List(tasks, id: \.self) { task in
                    HStack {
                        Image(systemName: "circle")
                            .foregroundColor(.white)
                        Text(task)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .listRowBackground(Color.clear)
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}
    
#Preview {
    ContentView()
}
