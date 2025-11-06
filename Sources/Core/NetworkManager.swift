import Foundation

public actor NetworkManager {
    public static let shared = NetworkManager()
    
    /// Generic function to fetch any Decodable type from a URL.
    @available(iOS 15.0, macOS 12.0, *)
    public func fetch<T: Decodable>(from urlString: String) async throws -> T {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200..<300).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }
        
        let decoded = try JSONDecoder().decode(T.self, from: data)
        return decoded
    }
}
