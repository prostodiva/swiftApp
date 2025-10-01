//
//  ContentView.swift
//  myApp
//
//  Created by Rita Kattsyna on 9/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    var tasks = Tasks()
    
    var body: some View {
        NavigationView() {
            ZStack {
                Color(red: 0.82, green: 0.76, blue: 0.71)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    TextField("Search Bar...", text: $searchText)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(25)
                        .padding(15)
                    NavigationLink(destination: UpcommingTasksView()) {
                        Text("Upcomming Tasks")
                            .padding(10)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    List(tasks.tasks, id: \.self) { task in
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
                    
                    
                    NavigationLink(destination: CategoriesView()) {
                        Text("Categories")
                            .padding(10)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    HStack(spacing: 30) {
                        Image(systemName: "house")
                            .foregroundColor(.white)
                        Image(systemName: "calendar.and.person")
                            .foregroundColor(.white)
                        Image(systemName: "heart.text.clipboard.fill")
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 15)
                }
            }
        }
    }
}
    
#Preview {
    ContentView()
}
