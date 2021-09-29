//
//  ProfileImageView.swift
//  SwiftUI_API_Tutorial
//
//  Created by 신미지 on 2021/09/29.
//

import Foundation
import SwiftUI
import URLImage

struct ProfileImageView: View {
  
  var imageUrl: URL
  
  var body: some View {
    URLImage(imageUrl) { image in
      image
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
    .frame(width: 60, height: 60, alignment: .center)
    .clipShape(Circle())
    .overlay(Circle().stroke(Color.yellow, lineWidth: 2))
  }
}

struct ProfileImageView_Previews: PreviewProvider {
  static var previews: some View {
    let url = URL(string: "https://randomuser.me/api/portraits/men/69.jpg")!
    
    ProfileImageView(imageUrl: url)
  }
}
