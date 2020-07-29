//
//  MasterGroup.swift
//  SwiftUIChallenge
//
//  Created by Amit Majumdar on 29/07/20.
//

import SwiftUI

enum Topics {
    case text
    case attributedText
    case images
    case stack
    case stackOptionalChallenge
    case button
    case segment
    case segmentOptionalChallenge
    case login
}

struct MasterGroup: View {
    var topics: [SwiftUITopic] = [.init(topicName: "Text", topic: .text),
                                  .init(topicName: "Attributed Text", topic: .attributedText),
                                  .init(topicName: "Images", topic: .images),
                                  .init(topicName: "Stack", topic: .stack),
                                  .init(topicName: "Stack Optional Challenge", topic: .stackOptionalChallenge),
                                  .init(topicName: "Button", topic: .button),
                                  .init(topicName: "Segment Control", topic: .segment),
                                  .init(topicName: "Segment Optional Challenge", topic: .segmentOptionalChallenge),
                                  .init(topicName: "Login Screen Challenge", topic: .login)]
    var body: some View {
        NavigationView {
            List {
                ForEach(topics, id: \.id) { topic  in
                    NavigationLink(destination: destination(forTopic: topic.topic)) {
                        Text(topic.topicName.capitalized)
                    }
                }
            }.navigationTitle("\(topics.count) days of SwiftUI")
        }
    }
    
    private func destination(forTopic topic: Topics) -> some View {
        switch topic {
        case .text: return AnyView(TextChallengeView())
        case .attributedText: return AnyView(AttributedTextChallenge())
        case .images: return AnyView(ImageChallengeView())
        case .stack: return AnyView(StackChallengeView())
        case .stackOptionalChallenge: return AnyView(ScrollChallenge())
        case .button: return AnyView(ButtonChallenge())
        case .segment: return AnyView(ListWithSegmentedControlChallenge())
        case .segmentOptionalChallenge: return AnyView(ScrollViewWithSegmentControl())
        case .login: return AnyView(LoginView())
        }
    }
}

struct MasterGroup_Previews: PreviewProvider {
    static var previews: some View {
        MasterGroup()
    }
}

struct SwiftUITopic: Identifiable, Hashable {
    let id = UUID()
    let topicName: String
    let topic: Topics
}
