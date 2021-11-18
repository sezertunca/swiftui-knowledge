//
//  ContentView.swift
//  TextEditorPlaceholder
//
//  Created by Sezer Tunca on 14/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var captionText: Text = ""
    
    var body: some View {
        TextAreaWithPlaceholder(placeholder: "What is happening", text: $captionText)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
