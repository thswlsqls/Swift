//
//  SiteRequest.swift
//  Quiz14-01
//
//  Created by Kenny on 2021/12/12.
//

import WebKit

class SiteRequest{
    func loadWebpage(url: String) -> URLRequest{
        let myUrl = URL(string: url)
        return URLRequest(url: myUrl!)
    }
}
