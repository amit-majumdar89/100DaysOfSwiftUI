//
//  LoginView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/07/20.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Image(systemName: "chevron.down")
                .padding(.bottom, 60)
            Text("Welcome!")
                .frame(width: UIScreen.main.bounds.width - 40, height: 0, alignment: .leading)
                .font(.custom("Open Sans", size: 44))
                .foregroundColor(.black)
                .padding(.bottom, 60)
            TextField("johdoe@apple.com", text: $email)
                .modifier(EmailTextFieldModifier())
                .padding(.init(top: 0, leading: 20, bottom: 8, trailing: 20))
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.custom("Open Sans", size: 14))
                .padding(.init(top: 0, leading: 20, bottom: 8, trailing: 20))
            UnderLinedText(title: "Forgot Password?", titleColor: Color.blue, tapAction: forgotPasswordTapped)
                .padding(.init(top: 0, leading: 20, bottom: 100, trailing: 20))
            Button("Submit", action: submitTapped)
                .buttonStyle(SubmitButtonStyle())
            Spacer(minLength: 0)
        }
    }
    
    func forgotPasswordTapped() {
        print("Forgot Password Tapped")
    }
    
    func submitTapped() {
        print("Submit Tapped")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct SubmitButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: .zero, maxWidth: .infinity)
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
}
