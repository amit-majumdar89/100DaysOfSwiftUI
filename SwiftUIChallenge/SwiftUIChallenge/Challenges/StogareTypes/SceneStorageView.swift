//
//  SceneStorageView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 05/09/20.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("text") var text = ""

    var body: some View {
        NavigationView {
            TextEditor(text: $text)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
