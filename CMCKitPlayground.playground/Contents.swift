//: Playground - noun: a place where people can play

import UIKit
import CMCKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
let apiClient = CMCClient()

func continueExec(_ resp: ListingsResponse){
    for data in resp.data {
        print(data.name!)
    }
}

apiClient.listings(ListingsRequest()) { response in
    switch response {
    case .success(let data):
        continueExec(data)
    case .failure(let error):
        print(error)
    }
}


