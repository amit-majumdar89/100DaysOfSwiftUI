//
//  AppStorageView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 05/09/20.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("username") var username: String = "Bob"
    @AppStorage("secretKey", store: UserDefaults(suiteName: "group.com.swiftUIChallenge.com.secured")) var secretKey: String = "0x600001604620"
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Welcome: \(username)")
            Text("Secret Key: \(secretKey)")
            Button("Change Secret") {
                self.secretKey = "\(UUID())"
            }.buttonStyle(SubmitButtonStyle())
        }.navigationTitle("App Storage")
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
