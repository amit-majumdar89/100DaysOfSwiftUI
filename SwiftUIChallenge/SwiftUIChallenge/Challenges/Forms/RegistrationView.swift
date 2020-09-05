//
//  RegistrationView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 05/09/20.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var address: String = ""
    @State var city: String = ""
    @State var country: String = ""
    @State var contactNumber: String = ""
    @State var alternateEmail: String = ""
    @State var birthdate: Date = Date()

    @State var selectedGender: Int = 0

    var gender = ["Male", "Female", "Others"]
    
    var body: some View {
        Form {
            Section(header: Text("PERSONAL INFORMATION")) {
                TextField("First Name", text: $firstName)
                    .tag(1)
                    .keyboardType(.alphabet)
                    .textContentType(.name)
                TextField("Last Name", text: $lastName)
                    .tag(2)
                    .keyboardType(.alphabet)
                    .textContentType(.name)
                TextField("Email", text: $email)
                    .tag(3)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                Picker("Gender", selection: $selectedGender){
                    ForEach(0..<gender.count){ index in
                        Text(gender[index])
                    }
                }
                DatePicker("Birth Date", selection: $birthdate, in: ...Date(), displayedComponents: .date)
            }
            Section(header: Text("CONTACT INFORMATION")) {
                TextField("Address/Street", text: $address)
                    .tag(4)
                    .keyboardType(.default)
                    .textContentType(.fullStreetAddress)
                TextField("City", text: $city)
                    .tag(5)
                    .keyboardType(.default)
                    .textContentType(.addressCity)
                TextField("Country", text: $country)
                    .tag(6)
                    .keyboardType(.default)
                    .textContentType(.countryName)
                TextField("Contact Number", text: $contactNumber)
                    .tag(7)
                    .keyboardType(.phonePad)
                    .textContentType(.telephoneNumber)
                TextField("Alternate Email", text: $alternateEmail)
                    .tag(8)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
            }
            Section {
            Button("Submit", action: submitTapped)
                .buttonStyle(SubmitButtonStyle())
            }.background(Color.clear)
        }.navigationTitle("Register")
    }
    
    func submitTapped()  {
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
