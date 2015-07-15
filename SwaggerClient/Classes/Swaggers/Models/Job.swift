//
// Job.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class Job: JSONEncodable {

    enum Type: String { 
        case Job = "job"
        case Batch = "batch"
    }
    
    /** Unique identifier for the job. */
    var id: String?
    /** Token to identify client allowed to run the job. */
    var token: String?
    /** Type of the job created. */
    var type: Type!
    /** Current status for the job */
    var status: Status?
    /** Determine if the job must be processed as soon as it is ready. */
    var process: Bool?
    /** Type of conversion or conversions to be carried out. */
    var conversion: [Conversion]?
    /** Source or sources of the files to be converted. */
    var input: [InputFile]?
    /** Callback url to the the status updates */
    var callback: String?
    /** Server assigned for file uploads and downloads */
    var server: String?
    /** Date and time when the job was created. */
    var created_at: NSDate?
    /** Date and time when the job was last modified. */
    var modified_at: NSDate?
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["token"] = self.token
        nillableDictionary["type"] = self.type.rawValue
        nillableDictionary["status"] = self.status?.encode()
        nillableDictionary["process"] = self.process
        nillableDictionary["conversion"] = self.conversion?.encode()
        nillableDictionary["input"] = self.input?.encode()
        nillableDictionary["callback"] = self.callback
        nillableDictionary["server"] = self.server
        nillableDictionary["created_at"] = self.created_at?.encode()
        nillableDictionary["modified_at"] = self.modified_at?.encode()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
