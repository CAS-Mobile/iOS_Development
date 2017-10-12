import Foundation

class ApiConnector {
    
    var urlSession: URLSession
    
    init(session: URLSession) {
        urlSession = session
    }
    
    public func makeCall(with endpoint: String, completion: @escaping (_ success: Bool, _ jsonData: AnyObject?) -> ()) {
        
        var request = URLRequest(url: URL(string: endpoint)!)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = urlSession.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            if let error = error {
                print(error)
            }
            
            if let data = data {
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                if (response as? HTTPURLResponse) != nil {
                    completion(true, json as AnyObject)
                } else {
                    completion(false, json as AnyObject)
                }
            } else {
                completion(false, nil)
            }
            
        })
        task.resume()
    }
}
