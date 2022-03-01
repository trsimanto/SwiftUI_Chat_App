//
//  Extensions.swift
//  SwiftUI_Chat_App
//
//  Created by Towhid on 3/1/22.
//

import Foundation
import UIKit
import SwiftUI

extension View {
    func cornerRedius (_ radius: CGFloat, corners: UIRectCorner ) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius : CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path{
        return Path(UIBezierPath (
            roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius)).cgPath)
    }
    
}

