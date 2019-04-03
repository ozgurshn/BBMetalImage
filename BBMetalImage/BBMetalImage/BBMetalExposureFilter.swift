//
//  BBMetalExposureFilter.swift
//  BBMetalImage
//
//  Created by Kaibo Lu on 4/2/19.
//  Copyright © 2019 Kaibo Lu. All rights reserved.
//

import UIKit

/// Adjusts the exposure of the image
public class BBMetalExposureFilter: BBMetalBaseFilter {
    /// The adjusted exposure (-10.0 ~ 10.0)
    public var exposure: Float
    
    public init(exposure: Float) {
        self.exposure = exposure
        super.init(kernelFunctionName: "exposureKernel")
    }
    
    override func updateParameters(forComputeCommandEncoder encoder: MTLComputeCommandEncoder) {
        encoder.setBytes(&exposure, length: MemoryLayout<Float>.size, index: 0)
    }
}
