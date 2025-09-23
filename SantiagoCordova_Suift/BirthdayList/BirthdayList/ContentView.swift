//
//  ContentView.swift
//  BirthdayList
//
//  Created by Alumno on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Santiago", birthday: .now),
        Friend(name: "Rodrigo", birthday: Date(timeIntervalSince1970: 0))
    ]
    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
        }
    }
}

#Preview {
    ContentView()
}
