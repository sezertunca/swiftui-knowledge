//
//  CapsuleActionButton.swift
//  Components
//
//  Created by Sezer Tunca on 12/11/2021.
//

import SwiftUI

struct CapsuleActionButton: View {
    
    private let title: String
    private let size: CGSize
    private let backgroundColor: Color
    private let actionBlock: (() -> Void)
    
    let padding: EdgeInsets = .init(top: 0, leading: 10, bottom: 0, trailing: 0)
    
    init(title: String,
         backgroundColor: Color,
         size: CGSize,
         actionBlock: @escaping (() -> Void)
    ) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.size = size
        self.actionBlock = actionBlock
    }
    
    var body: some View {
        Button("Custom button") { }
        .buttonStyle(CapsuleButtonStyle())
        .padding(padding)
        
    }
}

struct CapsuleActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleActionButton(title: "Edit Profile",
                            backgroundColor: .black,
                            size: .init(width: 125, height: 30), actionBlock: {})
    }
}

struct CapsuleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .frame(width: 200, height: 30)
            .padding(.horizontal)
            .background(Color.black)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            .padding(.horizontal)
            .font(.footnote)
    }
}


