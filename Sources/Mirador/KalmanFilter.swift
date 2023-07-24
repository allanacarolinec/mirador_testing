//
//  KalmanFilter.swift
//  MiradorTest
//
//  Created by Allana Corrêa on 20/07/23.
//

import Foundation

class KalmanFilter {
    private var stateEstimate: Float
    private var estimateUncertainty: Float

    init(initialEstimate: Float, initialUncertainty: Float) {
        self.stateEstimate = initialEstimate
        self.estimateUncertainty = initialUncertainty
    }
    
    func update(measurement: Float, measurementUncertainty: Float) {
        let kalmanGain = estimateUncertainty / (estimateUncertainty + measurementUncertainty)
        stateEstimate = stateEstimate + kalmanGain * (measurement - stateEstimate)
        estimateUncertainty = (1 - kalmanGain) * estimateUncertainty
    }
    
    func getEstimate() -> Float {
        return stateEstimate
    }
}
