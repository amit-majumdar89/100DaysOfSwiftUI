//
//  StackChallengeView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 12/07/20.
//

import SwiftUI

struct StackChallengeView: View {
    var body: some View {
        List {
            ForEach(Forest.items, id:\.self) { item in
                ForestRow(item: item)
            }
        }.navigationTitle("Forests")
    }
}

struct StackChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        StackChallengeView()
    }
}


struct Forest: Hashable, Identifiable {
    
    let id: Int
    let city: String
    let state: String
    let country: String
    let image: String
    let name: String
    
    static var items: [Forest] =
        [.init(id: 0, city: "Golaghat,Nagaon district and Karbi Anglong", state: "Assam", country: "India", image: "tree2", name: "Kaziranga Natural Forest"),
         .init(id: 1, city: "Kokrajhar, Chirang, Baksa, Bajali, Udalguri, and Darrang", state: "Assam", country: "India", image: "tree1", name: "Manas National Park"),
         .init(id: 2, city: "Sonitpur", state: "Assam", country: "India", image: "tree3", name: "Nameri National Park"),
         .init(id: 3, city: "Golaghat,Nagaon district and Karbi Anglong", state: "Assam", country: "India", image: "tree2", name: "Kaziranga Natural Forest"),
          .init(id: 4, city: "Kokrajhar, Chirang, Baksa, Bajali, Udalguri, and Darrang", state: "Assam", country: "India", image: "tree1", name: "Manas National Park"),
          .init(id: 5, city: "Sonitpur", state: "Assam", country: "India", image: "tree3", name: "Nameri National Park"),
          .init(id: 6, city: "Golaghat,Nagaon district and Karbi Anglong", state: "Assam", country: "India", image: "tree2", name: "Kaziranga Natural Forest"),
           .init(id: 7, city: "Kokrajhar, Chirang, Baksa, Bajali, Udalguri, and Darrang", state: "Assam", country: "India", image: "tree1", name: "Manas National Park"),
           .init(id: 8, city: "Sonitpur", state: "Assam", country: "India", image: "tree3", name: "Nameri National Park"),
        ]
}


struct ForestRow: View {
    let item: Forest
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            ZStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
                    .cornerRadius(7.0)
                Button(action: zoomAction){
                    
                }.frame(width: 75, height: 75, alignment: .center)
            }
            VStack(alignment: .leading, spacing: 0) {
                Text(item.city)
                    .font(.system(size: 16))
                    .bold()
                    .foregroundColor(.white)
                    + Text(", \(item.state)")
                    .font(. system(size: 16))
                    .italic()
                    .foregroundColor(.white)
                    + Text(", \(item.country)")
                    .font(.system(size: 16))
                    .bold()
                    .foregroundColor(.white)
                Text(item.name)
                    .font(.body)
                    .italic()
                    .foregroundColor(.white)
            }
            Spacer()
            Button(action: navigationAction) {
                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20, alignment: .center)
                    .font(.body)
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(Color(red: 0.0/255.0, green: 51.0/255.0, blue: 51.0/255.0))
        .edgesIgnoringSafeArea(.all)
    }
    
    func zoomAction() {
        print("zoomAction")
    }
    
    func navigationAction() {
        print("navigationAction")
    }
}
