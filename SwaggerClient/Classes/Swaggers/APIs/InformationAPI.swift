//
// InformationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit

extension SwaggerClientAPI {
    
    class InformationAPI: APIBase {
    
        /**
         
         Get a list of the valid conversions.
         
         - GET /conversions
         - Gets a list of the valid conversions that can be made with the API. For each conversion is also shown the available options for that specific type of conversion.\n\nThis conversions can be added to a Job through the specific endpoint or in the information given to create the new Job.\n
         - examples: [{example=[ {
  "id" : "8daae6d1-26e0-11e5-b2a1-0800273b325b",
  "category" : "audio",
  "target" : "mp3",
  "options" : ""
} ], contentType=application/json}]
         
         :param: category (query) Category for the conversion.
         :param: target (query) Target for for the conversion.
         :param: page (query) Pagination for list of elements.

         :returns: Promise<Response<[Conversion]>> 
         */
        func conversionsGet(#category: String?, target: String?, page: Double?) -> RequestBuilder<[Conversion]> {
            let path = "/conversions"
            let url = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "category": category,
                "target": target,
                "page": page
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<[Conversion]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: url, parameters: parameters, isBody: false)
        }
    
        /**
         
         Get a list of the valid statuses.
         
         - GET /statuses
         - The endpoint provide a list of all available status that the Job may have during the process as a description of the status.
         - examples: [{example=[ {
  "code" : "processing",
  "info" : "The file is being processed."
} ], contentType=application/json}]

         :returns: Promise<Response<[Status]>> 
         */
        func statusesGet() -> RequestBuilder<[Status]> {
            let path = "/statuses"
            let url = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<[Status]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder(method: "GET", URLString: url, parameters: parameters, isBody: true)
        }
    
    }
}
