//  This file was automatically generated and should not be edited.

import Apollo

public final class FeedQueryQuery: GraphQLQuery {
  public let operationDefinition =
    "query FeedQuery {\n  feed {\n    __typename\n    links {\n      __typename\n      id\n      url\n      description\n      postedBy {\n        __typename\n        id\n        name\n      }\n      votes {\n        __typename\n        id\n        user {\n          __typename\n          id\n        }\n      }\n    }\n    count\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("feed", type: .nonNull(.object(Feed.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(feed: Feed) {
      self.init(unsafeResultMap: ["__typename": "Query", "feed": feed.resultMap])
    }

    public var feed: Feed {
      get {
        return Feed(unsafeResultMap: resultMap["feed"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "feed")
      }
    }

    public struct Feed: GraphQLSelectionSet {
      public static let possibleTypes = ["Feed"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("links", type: .nonNull(.list(.nonNull(.object(Link.selections))))),
        GraphQLField("count", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(links: [Link], count: Int) {
        self.init(unsafeResultMap: ["__typename": "Feed", "links": links.map { (value: Link) -> ResultMap in value.resultMap }, "count": count])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var links: [Link] {
        get {
          return (resultMap["links"] as! [ResultMap]).map { (value: ResultMap) -> Link in Link(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Link) -> ResultMap in value.resultMap }, forKey: "links")
        }
      }

      public var count: Int {
        get {
          return resultMap["count"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "count")
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes = ["Link"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("url", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("postedBy", type: .object(PostedBy.selections)),
          GraphQLField("votes", type: .nonNull(.list(.nonNull(.object(Vote.selections))))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, url: String, description: String, postedBy: PostedBy? = nil, votes: [Vote]) {
          self.init(unsafeResultMap: ["__typename": "Link", "id": id, "url": url, "description": description, "postedBy": postedBy.flatMap { (value: PostedBy) -> ResultMap in value.resultMap }, "votes": votes.map { (value: Vote) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }

        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var postedBy: PostedBy? {
          get {
            return (resultMap["postedBy"] as? ResultMap).flatMap { PostedBy(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "postedBy")
          }
        }

        public var votes: [Vote] {
          get {
            return (resultMap["votes"] as! [ResultMap]).map { (value: ResultMap) -> Vote in Vote(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Vote) -> ResultMap in value.resultMap }, forKey: "votes")
          }
        }

        public struct PostedBy: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, name: String) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Vote: GraphQLSelectionSet {
          public static let possibleTypes = ["Vote"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, user: User) {
            self.init(unsafeResultMap: ["__typename": "Vote", "id": id, "user": user.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var user: User {
            get {
              return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "user")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }
          }
        }
      }
    }
  }
}