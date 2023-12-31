//
//  SearchUserRow.swift
//  MVVMCombineDemo
//
//  Created by mukesh on 28/05/20.
//  Copyright © 2020 neosoft. All rights reserved.
//

import Foundation
import SwiftUI

struct SearchUserRow: View {
    @ObservedObject var viewModel: SearchUserViewModel
    @State var user: User

    var body: some View {
        HStack {
            
            AsyncImage(url: user.avatar_url){
                image in
                image.image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 100, height: 100)
            .clipped()
            .padding(5)
//            viewModel.userImages[user].map { image in
//                Image(uiImage: image)
//                    .frame(width: 44, height: 44)
//                    .aspectRatio(contentMode: .fit)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
//            }

            Text(user.login)
                .font(Font.system(size: 18).bold())

            Spacer()
            }
    }
}
