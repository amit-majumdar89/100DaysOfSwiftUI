//
//  GeometryReaderMasterUIView.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 05/09/20.
//

import SwiftUI

struct GeometryReaderMasterUIView: View {
    var body: some View {
        HStack {
            Text("Left")
                .background(Color.purple)
            VStack {
                Text("Top View not in Geometry Reader")
                    .background(Color.purple)
                GeometryReader { geometry in
                    VStack(spacing: 5) {
                        Text("Top View in Geometry Reader")
                            .frame(width: geometry.size.width * 1.0, height: 60)
                            .background(Color.blue)
                        HStack(spacing: 0) {
                            Text("Left View in Geometry Reader")
                                .frame(width: geometry.size.width / 2, height: 50)
                                .background(Color.red)
                            Text("Right View in Geometry Reader")
                                .frame(width: geometry.size.width / 2, height: 50)
                                .background(Color.green)
                        }
                        Text("Middle View in Geometry Reader")
                            .frame(width: geometry.size.width * 0.5)
                            .background(Color.yellow)
                        Text("Bottom View in Geometry Reader")
                            .frame(width: geometry.size.width * 0.9, height: 60)
                            .background(Color.blue)
                    }
                }
                .background(Color.gray)
                Text("Bottom View not in Geometry Reader")
                    .background(Color.purple)
            }
            Text("Right")
                .background(Color.purple)
        }
    }
}

struct GeometryReaderMasterUIView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderMasterUIView()
    }
}

struct GeometryReaderMasterUIViewBasic: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Hello Geometry Reader")
                .frame(width: geometry.size.width * 0.9, height: 80)
                .background(Color.yellow)
        }
    }
}
