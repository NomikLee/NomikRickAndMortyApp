//
//  RMService.swift
//  RickAndMorty
//
//  Created by Pinocchio on 2024/3/27.
//

import Foundation

/// 用於取得與RM 資料庫的操作。
final class RMService {
    /// RMService的單例，可用於在應用程式中訪問RMService的唯一實例。
    static let shared = RMService()
    
    /// 私有初始化方法，防止外部初始化RMService的新實例。
    private init() {}
    
    /// 執行 發送RM API Call
    /// - Parameters:
    ///   - request: request 實例
    ///   - completion: RM callback 數據 與 error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}

