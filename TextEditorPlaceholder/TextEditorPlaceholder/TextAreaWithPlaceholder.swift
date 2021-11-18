//
//  TextAreaWithPlaceholder.swift
//  TextEditorPlaceholder
//
//  Created by Sezer Tunca on 14/11/2021.
//

import SwiftUI

struct TextAreaWithPlaceholder: View {
    
    @Binding var text: String
    let placeholder: String
    
    init(placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            TextEditor(text: $text)
                .padding(4)
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
        }.font(.body)
    }
}

struct TextAreaWithPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        TextAreaWithPlaceholder(placeholder: "Add text", text: .constant(""))
    }
}
