//
//  CMCClient.swift
//  CMCKit
//
//  Created by Ashwin Swaroop on 7/26/18.
//  Copyright © 2018 Ashwin Swaroop. All rights reserved.
//

import Foundation

public class CMCClient {
    private let baseEndpoint = "https://api.coinmarketcap.com/v2/"
    private let session = URLSession(configuration: .default)
    //CoinMarketCap API endpoints
    public func request<T: CMCRequest>(_ request: T, _ callback: @escaping (Result<T.Response>)->Void){
        let endpoint = self.endpoint(request)
        let task = session.dataTask(with: URLRequest(url: endpoint)) { data, response, error in
            if let data = data {
                do {
                    let cmcResponse = try JSONDecoder().decode(T.Response.self, from: data)
                    callback(.success(cmcResponse))
                } catch {
                    callback(.failure(error))
                }
            } else if let error = error {
                callback(.failure(error))
            }
        }
        task.resume()
    }
    //Custom endpoints
    public func tickerByName(_ name: String, callback: @escaping (Result<TickerResponse>)->Void){
        self.request(ListingsRequest()){ response in
            switch response {
            case .success(let data):
                for element in data.data {
                    if element.name == name {
                        self.request(TickerRequest(id: element.id), callback)
                    }
                }
            case .failure(let error):
                print(error);
            }
        }
    }
    private func endpoint<T: CMCRequest>(_ request: T) -> URL {
        if let params = request.parameters {
            return URL(string: "\(baseEndpoint)\(request.resourceName)"+params)!
        }
        else{
            print("\(baseEndpoint)\(request.resourceName)")
            return URL(string: "\(baseEndpoint)\(request.resourceName)")!
        }
    }
    public init() {
        
    }
}
