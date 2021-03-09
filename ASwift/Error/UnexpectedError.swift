//
//  InternalError.swift
//  AFoundation
//
//  Created by Ihor Myroniuk on 26.05.2020.
//  Copyright © 2020 Ihor Myroniuk. All rights reserved.
//

import Foundation

public struct UnexpectedError: Error, CustomStringConvertible {
    
    private let file: String
    private let fileId: String
    private let filePath: String
    private let line: Int
    private let column: Int
    private let function: String
    private let dsohandle: UnsafeRawPointer
    
    public init(file: String = #file, fileId: String = #fileID, filePath: String = #filePath, line: Int = #line, column: Int = #column, function: String = #function, dsohandle: UnsafeRawPointer = #dsohandle) {
        self.file = file
        self.fileId = fileId
        self.filePath = filePath
        self.line = line
        self.column = column
        self.function = function
        self.dsohandle = dsohandle
    }
    
    // MARK: CustomStringConvertible
    
    public var description: String {
        var description = "file: \(file)\n"
        description += "fileId: \(fileId)\n"
        description += "filePath: \(filePath)\n"
        description += "line: \(line)\n"
        description += "column: \(column)\n"
        description += "function: \(function)\n"
        description += "dsohandle: \(dsohandle)\n"
        return description
    }
    
}
