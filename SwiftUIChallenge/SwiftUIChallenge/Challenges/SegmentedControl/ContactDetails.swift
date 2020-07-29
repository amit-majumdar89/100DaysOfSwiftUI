//
//  ContactDetails.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 18/07/20.
//

import SwiftUI

struct ContactDetails: View {
    var contactInfo: ContactInfo
    var body: some View {
        VStack {
            Text(contactInfo.name)
            Text(contactInfo.email)
            Text(contactInfo.number)
        }
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(contactInfo: .init(name: "Amit", email: "amit@apple.com", number: "9109202902"))
    }
}
