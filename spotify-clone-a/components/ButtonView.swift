//
//  ButtonView.swift
//  spotify-clone-a
//
//  Created by Mac21 on 11/05/24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var background: Color = .clear
    var color: Color = .white
    var borderColor: Color = .white
    var logo: String = ""
    
    var body: some View {
        Button{
            print("evento tap del boton")
        } label: {
            Spacer()
            if logo != "" {
                Image(logo)
                    .resizable()
                    .frame(width: 23.54, height: 26)
            }
            if title == "Sign up free" {
                NavigationLink(title, destination: SignUpView())
                    .foregroundStyle(color)
                    .fontWeight(.bold)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 10)
            } else {
                Text(title)
                    .foregroundStyle(color)
                    .fontWeight(.bold)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 10)
            }
            Spacer()
        }
        //.background(background != nil ? Color(background!): .clear)
        //.border(borderColor)
        //.cornerRadius(45)
        .background(
            RoundedRectangle(cornerRadius: 45)
                .stroke(borderColor, lineWidth: 1)
                .fill(background)
        )
        .padding(.horizontal, 30)
    }
}

#Preview {
    ButtonView(title: "Continue with Google", background: Color("primary"), color: .black, borderColor: .clear)
}
