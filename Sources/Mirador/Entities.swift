//
//  Entities.swift
//  MiradorTest
//
//  Created by Allana Corrêa on 20/07/23.
//

import Foundation
import RealityKit

public protocol HasScreenScale : Entity {
}

public class ScreenScaleEntity : Entity, HasScreenScale {
    
}

public protocol HasFaceCamera: Entity {
}

public class FaceCameraEntity: Entity, HasFaceCamera {
    
}

