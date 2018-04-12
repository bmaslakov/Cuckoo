//
//  DLGPeerMediaTests.swift
//  DialogSDKTests
//
//  Created by Boris Maslakov on 4/12/18.
//  Copyright © 2018 Dialog LLC. All rights reserved.
//

import Foundation
import XCTest

@testable import Cuckoo

class DLGPeerMediaTests {
    func testMocking() {
        let mock = MockDLGDummyPeerConnectionExt()
//        mock.addIceCandidate(RTCIceCandidate.init(sdp: "", sdpMLineIndex: 32, sdpMid: nil))
        verify(mock, times(100)).addIceCandidate(any())
    }
}

class DLGDummyPeerConnectionExt : DLGPeerConnection {
    let subject: PublishSubject<DLGPeerConnectionEvent> = PublishSubject()
    
    var observable: Observable<DLGPeerConnectionEvent> { get { return subject } }
    
    var localDescription: String { get { fatalError("not implemented") } }
    
    init() {
        
    }
    
    func createOffer() -> Maybe<String> {
        return Maybe.just("offer")
    }
    
    func onOffer(_ sdp: String) -> Maybe<String> {
        return Maybe.just("answer")
    }
    
    func onAnswer(_ sdp: String) -> Maybe<String> {
        return Maybe.just("empty")
    }
    
    func addIceCandidate(_ candidate: RTCIceCandidate) {
        
    }
    
    func removeIceCandidates(_ candidates: [RTCIceCandidate]) {
        
    }
}
