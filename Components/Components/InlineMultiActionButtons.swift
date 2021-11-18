//
//  InlineMultiActionButtons.swift
//  Components
//
//  Created by Sezer Tunca on 12/11/2021.
//

import SwiftUI



struct InlineMultiActionButtons: View {
    var body: some View {
        HStack(spacing: 2) {
            Button {
                
            } label: {
                Text("Share my profile")
                    .frame(width: 125, height: 30)
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                    .padding(.horizontal)
                    .font(.footnote)
            }
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .frame(width: 95, height: 30)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .padding(.horizontal)
                    .font(.footnote)
                    .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1))
            }
        }
    }
}

struct InlineMultiActionButtons_Previews: PreviewProvider {
    static var previews: some View {
        InlineMultiActionButtons()
    }
}
