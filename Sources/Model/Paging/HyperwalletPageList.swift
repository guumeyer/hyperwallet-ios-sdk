//
// Copyright 2018 - Present Hyperwallet
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software
// and associated documentation files (the "Software"), to deal in the Software without restriction,
// including without limitation the rights to use, copy, modify, merge, publish, distribute,
// sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
// BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import Foundation

/// Representation of subset content from a dataset
public struct HyperwalletPageList<ListType: Decodable>: Decodable {
    /// The amount of the dataset
    public let count: Int
    /// The `ListType` items
    public let data: [ListType]
    /// The maximum number of records that will be returned per page
    public let limit: Int
    /// The links
    public let links: [HyperwalletPageLink]
    /// The number of records to skip.
    public let offset: Int
}

/// Representation of the page link
public struct HyperwalletPageLink: Decodable {
    /// The URL of the link
    public let href: String
    /// The `HyperwalletPageParameter`
    public let params: HyperwalletPageParameter
}

/// Representation of the relationship between the current document and the linked document
public struct HyperwalletPageParameter: Decodable {
    /// The relationship
    public let rel: String
}
