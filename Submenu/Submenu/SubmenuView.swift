//
//  SubmenuView.swift
//  Submenu
//
//  Created by Sezer Tunca on 14/11/2021.
//

import SwiftUI

enum MenuOptions: Int, CaseIterable {
    case first
    case second
    case third
    
    var title: String {
        switch self {
        case .first: return "First"
        case .second: return "Second"
        case .third: return "Third"
        }
    }
}

struct SubmenuView: View {
    
    @Binding var selectedOption: MenuOptions
    @Namespace private var namespace
    
    var body: some View {
        HStack {
            ForEach(MenuOptions.allCases, id: \.self) { option in
                ZStack(alignment: .bottom) {
                    if selectedOption == option {
                        Rectangle()
                            .fill(.orange)
                            .matchedGeometryEffect(id: "option_underline", in: namespace)
                            .frame(width: 35, height: 2)
                            .offset(y: 10)
                    }
                    
                    Text(option.title)
                        .foregroundColor(selectedOption == option ? .orange : .black)
                        .frame(alignment: .leading)

                }
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selectedOption = option
                    }
                }
            }
        }
    }
}

struct SubmenuView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuView(selectedOption: .constant(.first))
    }
}
