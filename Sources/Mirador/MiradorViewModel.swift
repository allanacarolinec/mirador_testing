//
//  MiradorViewModel.swift
//  MiradorTest
//
//  Created by Allana Corrêa on 20/07/23.
//

import Foundation
import Combine
import ARKit
import RealityKit

class MiradorViewModel: NSObject {
    var locationAnchor: LocationAnchor!
    var subscriptions = [Cancellable]()
    var screenScaleEntities = [ScreenScaleEntity]()
    var faceCameraEntities = [FaceCameraEntity]()
    var locationAnchorEntity: LocationAnchorEntity
    var imageAnchorEntities = [ARImageAnchor: AnchorEntity]()
    
    init(locationAnchor: LocationAnchor) {
        self.locationAnchor = locationAnchor
        self.locationAnchorEntity = LocationAnchorEntity(
            locationAnchor: locationAnchor,
            referenceImageName: locationAnchor.name)
        
        super.init()
    }
}
