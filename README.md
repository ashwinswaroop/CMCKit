## CMCKit
CMCKit is a wrapper for CoinMarketCap's new V2 API. V1 is currently still supported, but will be [taken offline soon.](https://coinmarketcap.com/api/)
CMC Kit provides access to the full functionality of CoinMarketCap's V2 API using all of the supported endpoints and request paramters.
Additionally, it provides access to some endpoints using custom request parameters to improve usability.
## Features
- Straightforward usage
- Developed purely in Swift 4 without any external libraries
- Full functionality of the CoinMarketCap V2 REST API
- Custom request parameters to make data retrieval easier
- Serialized data with Codable
- Up to date with every new change in CoinMarketCap's API
## Requirements
- iOS 9.0+
- Xcode 9.0+
## Example
### Obtaining the current price of Bitcoin
```
let apiClient = CMCClient()
apiClient.tickerByName("Bitcoin"){ response in
  switch response {
    case .success(let responseObject):
      print(responseObject.data.quotes.usd.price)
    case .failure(let error):
      print(error);
  }
}
```
## Usage
Refer to the [documentation](https://coinmarketcap.com/api/) provided by CoinMarketCap for the available endpoints.

Refer to the Data Models section below for more information on the object representation of the serialized JSON response.

Obtaining a single ticker by name and by symbol are custom requests developed by me to facilitate easier retrieval of data.
### Initialization
```
let apiClient = CMCClient()
```
### Listings
```
apiClient.request(ListingsRequest()){ response in
  switch response {
    case .success(let responseObject):
      //use responseObject of type ListingsResponse
    case .failure(let error):
      print(error);
  }
}
```
### All Tickers
```
apiClient.request(TickersRequest()){ response in
  switch response {
    case .success(let responseObject):
      //use responseObject of type TickersResponse
    case .failure(let error):
      print(error);
  }
}
```
### Single Ticker by name
```
apiClient.tickerByName("Bitcoin"){ response in
  switch response {
    case .success(let responseObject):
      //use responseObject of type TickerResponse
    case .failure(let error):
      print(error);
  }
}
```
### Single Ticker by symbol
```
apiClient.tickerBySymbol("BTC"){ response in
  switch response {
    case .success(let responseObject):
      //use responseObject of type TickerResponse
    case .failure(let error):
      print(error);
  }
}
```
### Single Ticker by listings ID
```
apiClient.request(TickerRequest(id: 1)){ response in
  switch response {
    case .success(let responseObject):
      //use responseObject of type TickerResponse
    case .failure(let error):
      print(error);
  }
}
```
### Global Data
```
apiClient.request(GlobalDataRequest()){ response in
  switch response {
    case .success(let responseObject):
      //use responseObject of type GlobalDataResponse
    case .failure(let error):
      print(error);
  }
}
```
## Data Models
In all of the above cases, a response object is composed of two structures: **data** and **metadata**.
These structures are just swift object representations of the JSON responses provided by CoinMarketCap.
You can find all of the data models in the repository, but they are also shown below.
### Top-Level Response Protocol
```
public protocol CMCResponse: Codable{
    associatedtype D
    associatedtype M
    var data: D {get}
    var metadata: M {get}
}
```
All the different responses: ListingsResponse, TickerResponse, TickersResponse, and GlobalDataResponse conform to the CMC response protocol.
This means that, each of the below Data and Metadata objects(ListingsData, ListingsMetadata, etc) can be referenced by .data and .metadata in any Response object which is of type CMCResponse.
### Listings Response
```
public struct ListingsData: Codable {
    public let id: Int
    public let name, symbol, websiteSlug: String
}
public struct ListingsMetadata: Codable {
    public let timestamp, numCryptocurrencies: Int
}
```
### All Tickers Response
```
public struct TickerData: Codable {
    public let id: Int
    public let name, symbol, websiteSlug: String
    public let rank: Int
    public let circulatingSupply, totalSupply: Double
    public let maxSupply: Double?
    public let quotes: TickerQuotes
    public let lastUpdated: Int
}
public struct TickersMetadata: Codable {
    public let timestamp, numCryptocurrencies: Int
}
```
### Single Ticker Response
```
public struct TickerData: Codable {
    public let id: Int
    public let name, symbol, websiteSlug: String
    public let rank: Int
    public let circulatingSupply, totalSupply: Double
    public let maxSupply: Double?
    public let quotes: TickerQuotes
    public let lastUpdated: Int
}
public struct TickerMetadata: Codable {
    public let timestamp: Int
}
```
### Global Data Response
```
public struct GlobalDataData: Codable {
    public let activeCryptocurrencies, activeMarkets: Int
    public let bitcoinPercentageOfMarketCap: Double
    public let quotes: GlobalDataQuotes
    public let lastUpdated: Int
}
public struct GlobalDataMetadata: Codable {
    public let timestamp: Int
}
```
## Contributing
If you have any ideas for additional custom requests or new features, feel free to send pull requests or create new issues.
## Author
Ashwin Swaroop

ashwinswaroop93@gmail.com
