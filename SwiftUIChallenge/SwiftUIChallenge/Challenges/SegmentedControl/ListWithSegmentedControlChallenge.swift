//
//  ListWithSegmentedControlChallenge.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 18/07/20.
//

import SwiftUI

struct ListWithSegmentedControlChallenge: View {
    @State private var sortingIndex = 0
    @State var contacts : [ContactInfo] = [.init(name: "John", email: "john@apple.com",  number: "123567890"),
                                       .init(name: "Albert", email: "albert@apple.com",  number: "123567890"),
                                       .init(name: "Bruce", email: "bruce@apple.com",  number: "123567890"),
                                       .init(name: "Sean", email: "sean@apple.com",  number: "123567890"),
                                       .init(name: "Robert", email: "robert@apple.com",  number: "123567890"),
                                       .init(name: "Albert", email: "albert@apple.com",  number: "123567890"),
                                       .init(name: "Francis", email: "francis@apple.com",  number: "123567890"),
                                       .init(name: "Joseph", email: "joseph@apple.com",  number: "123567890"),
                                       .init(name: "Adam", email: "adam@apple.com",  number: "123567890"),
                                       .init(name: "Lucifer", email: "lucifer@apple.com",  number: "123567890")]
    
    var body: some View {
        VStack {
            Picker("Sort Contacts by", selection: $sortingIndex) {
                Text("Name").tag(0)
                Text("Email").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            .onReceive([self.sortingIndex].publisher.first(), perform: { (tag) in
                // Here you would want to write your custom logic to perform some operations on segment change
                switch tag {
                case 0:
                    contacts.sort { $0.email < $1.email }
                case 1:
                    contacts.sort { $0.name > $1.name }
                default:
                    break
                }
            })
            .padding()
            List {
                ForEach(contacts, id:\.self) { contact in
                    NavigationLink(destination: ContactDetails(contactInfo: contact)) {
                        ContactCell(contactInfo: contact)
                    }
                }
            }.listStyle(GroupedListStyle())
            .onAppear {
                UITableView.appearance().tableHeaderView = UIView(frame: .init(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
            }
            Spacer()
        }.navigationTitle("Contacts")
    }
    
}

struct ListWithSegmentedControlChallenge_Previews: PreviewProvider {
    static var previews: some View {
        ListWithSegmentedControlChallenge()
    }
}

struct ContactCell: View {
    @State private var showingAlert = false

    var contactInfo: ContactInfo
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(contactInfo.name)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                Text(contactInfo.email)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
            Spacer()
            Button(action: sendMessage) {
                Image(systemName: "message.fill")
                    .frame(width: 40, height: 40, alignment: .center)
                    .font(.body)
                    .foregroundColor(.green)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Still in Development"), message: Text("Once implementation is complete you will be able to send a text message or make a video call"), dismissButton: .default(Text("Got it!")))
            }
            Button(action: makeVideoCall) {
                Image(systemName: "video.fill")
                    .frame(width: 40, height: 40, alignment: .center)
                    .font(.body)
                    .foregroundColor(.red)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Still in Development"), message: Text("Once implementation is complete you will be able to send a text message or make a video call"), dismissButton: .default(Text("Got it!")))
            }
        }
    }
    
    func makeVideoCall() {
        self.showingAlert = true
    }
    
    func sendMessage() {
        self.showingAlert = true
    }
}

struct ContactInfo: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let email: String
    let number: String
}
