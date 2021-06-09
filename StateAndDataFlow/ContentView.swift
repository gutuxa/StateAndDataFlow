//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 08.06.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManger
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 50)
            ButtonView(
                title: timer.buttonTitle,
                action: timer.startTimer,
                background: .red)
                .padding(.top, 50)
            Spacer()
            ButtonView(
                title: "Logout",
                action: user.logout,
                background: .blue)
        }.padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManger())
    }
}
