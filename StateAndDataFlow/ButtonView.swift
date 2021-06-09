//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Oksana Tugusheva on 09.06.2021.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    let background: Color
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(background)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Start", action: {}, background: .red)
    }
}
