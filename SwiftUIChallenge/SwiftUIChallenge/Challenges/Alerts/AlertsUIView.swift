//
//  AlertsUIView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 05/09/20.
//

import SwiftUI

struct AlertsUIView: View {
    @State private var isShowing = false
    var body: some View {
        Button(action: {
            isShowing = true
        }, label: {
            Text("Show Alert")
        }) .alert(isPresented: $isShowing) {
            Alert(title: Text("SwiftUI"),
                  message: Text("This is a test alert message"),
                  dismissButton: .default(Text("Ok")))
        }
    }
}

struct AlertsUIView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsUIView()
    }
}
