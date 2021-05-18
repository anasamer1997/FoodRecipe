//
//  CustomColor.swift
//  FoodRecipe
//
//  Created by mac on 18/05/2021.
//

import Foundation
import ChameleonFramework

struct customColor{
    
    let orange:UIColor!
    
    init(withFarme:CGRect) {
     let firstColor = UIColor(hexString: "FF8C28", withAlpha: 1 )
     let secondColor = UIColor(hexString: "FF6322", withAlpha: 1 )
        orange = UIColor(gradientStyle: .leftToRight, withFrame:  withFarme, andColors: [firstColor!,secondColor!])
    }
    //get orange color
    func getOrangeColor() -> UIColor{
        return orange
    }
}
