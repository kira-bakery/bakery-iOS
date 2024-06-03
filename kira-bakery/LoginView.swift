//
//  ContentView.swift
//  kira-bakery
//
//  Created by sujeong on 2024/05/02.
//

import SwiftUI
import CoreData

struct LoginView: View {
    @State private var userId: String = ""
    @State private var userPw: String = ""
    
    var body: some View {
        VStack{
            //form
            TextField("아이디", text: $userId)
                .padding(.horizontal, 15)
                .frame(width: 250, height: 50)
                .background(Color(uiColor: .white))
                .overlay(
                      RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray)
                    )
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0))
                .autocorrectionDisabled()
            
            TextField("비밀번호", text: $userPw)
                .padding(.horizontal, 15)
                .frame(width: 250, height: 50)
                .background(Color(uiColor: .white))
                .cornerRadius(10)
                .overlay(
                      RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray)
                    )
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                .autocorrectionDisabled()
            
            Button(action: {
                print("user id, pw: ", userId, userPw)
            }, label:{ Text("로그인")
                    .frame(width: 225, height: 30)
            })
            .buttonStyle(.bordered)
            .tint(.gray)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            
            Button(action: {
                print("KIRA_kakao")
            }, label:{ Image("kakaoLogin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
            })
            Button(action: {
                print("KIRA_naver")
            }, label:{ Image("naverLogin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
            })
            Button {
                print("kira_join")
            } label: {
               Text("회원가입 하기")
                    .foregroundColor(Color.gray)
                    .underline()
                    .padding(10)
            }

        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
