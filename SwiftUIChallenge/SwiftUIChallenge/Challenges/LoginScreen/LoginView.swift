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
    @State var validEntries: Bool = false
    @State var showErrorAlert: Bool = false
    

    var body: some View {
        VStack {
            Image("logo")
                .frame(width: 150, height: 150, alignment: .center)
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
        .alert(isPresented: $showErrorAlert) { () -> Alert in
            Alert(title: Text("Something went wrong"),
                  message: Text("Please verify whether the entered email or password is correct"),
                  dismissButton: .default(Text("Ok")))
        }
    }
    
    func forgotPasswordTapped() {
        print("Forgot Password Tapped")
    }
    
    func submitTapped() {
        if email.isValidEmail() && password.isValidPassword() {
            self.validEntries = true
        } else {
            self.showErrorAlert = true
        }
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


extension String {
    func isValidEmail() -> Bool {
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }

    func isValidPassword() -> Bool {
        let password = self.trimmingCharacters(in: CharacterSet.whitespaces)
        let passwordRegx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$"
        let passwordCheck = NSPredicate(format: "SELF MATCHES %@",passwordRegx)
        return passwordCheck.evaluate(with: password)
    }
}
