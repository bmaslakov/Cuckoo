//
//  DLGPeerConnection.swift
//  Cuckoo_iOSTests
//
//  Created by Boris Maslakov on 4/12/18.
//

import Foundation

// A wrapper for WebRTC peer connection. Provides reactive interfaces + creates and disposes peer connection.
internal protocol DLGPeerConnection {
    typealias Event = DLGPeerConnectionEvent
    var observable: Observable<DLGPeerConnectionEvent> { get }
    var localDescription: String { get }
    func createOffer() -> Maybe<String>
    func onOffer(_ sdp: String) -> Maybe<String>
    func onAnswer(_ sdp: String) -> Maybe<String>
    func addIceCandidate(_ candidate: RTCIceCandidate)
    func removeIceCandidates(_ candidates: [RTCIceCandidate])
}

enum DLGPeerConnectionEvent {
    
}

class Observable<T> {
    
}

class PublishSubject<T>: Observable<T> {
    
}

class Maybe<T> {
    static func just(_ val: T) -> Maybe<T> {
        return Maybe<T>.init()
    }
}

struct RTCIceCandidate {
    init(sdp: String, sdpMLineIndex: Int, sdpMid: Int?) {
        
    }
}

