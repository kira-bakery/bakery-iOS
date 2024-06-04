//
//  AgreementView.swift
//  kira-bakery
//
//  Created by sujeong on 2024/06/04.
//

import SwiftUI




struct AgreementView: View {
//    @State var agreements: Array<Agreement>
    @State var agreements:[Agreement] = [
        Agreement(title: "약관동의1", isAgreed: false),
        Agreement(title: "약관동의22", isAgreed: false),
        Agreement(title: "약관동의333", isAgreed: false),
        Agreement(title: "약관동의4444", isAgreed: false),
        Agreement(title: "약관동의55555", isAgreed: false)

    ]
    
    var body: some View {
        VStack{
            Text("회원가입")
                .bold()
                .font(.system(size: 30, weight: .black))
            ForEach($agreements, id: \.self){ agreement in
                AgreementCell(isAgreed: agreement.isAgreed, label: agreement.title)
            }
        }
        .padding(20)
    }
}



struct Agreement: Hashable {
    var title: String
    var isAgreed: Bool
    
    init(title: String, isAgreed: Bool) {
        self.title = title
        self.isAgreed = isAgreed
    }
}

struct AgreementCell: View {
    @Binding var isAgreed: Bool
    @Binding var label: String
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Toggle("✓", isOn: $isAgreed)
                .toggleStyle(.button)
        }
    }
    
}

struct AgreementView_Previews: PreviewProvider {
    static var previews: some View {
        AgreementView()
    }
}


// 커스텀용
struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(configuration.isOn ? "checked" : "unchecked")
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
            }
        }
        .buttonStyle(.plain)
        
    }
}
