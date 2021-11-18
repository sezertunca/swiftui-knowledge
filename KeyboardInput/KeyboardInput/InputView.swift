//
//  InputView.swift
//  KeyboardInput
//
//  Created by Sezer Tunca on 10/11/2021.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                TextField("Message...", text: $text)
                    .textFieldStyle(.plain)
                    .frame(minHeight: 30)
                
                Button {
                    
                } label: {
                    Text("Send")
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 4)
        }
    }
}

struct InputView_Previews: PreviewProvider {
    
    @State var text: String = ""
    
    static var previews: some View {
        
        InputView(text: .constant("Text..."))
    }
}
