import UIKit
import Apollo

class PostTableViewCell: UITableViewCell {
  var postId: GraphQLID?

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var bylineLabel: UILabel!
  @IBOutlet weak var votesLabel: UILabel!

  func configure(with post: FeedQueryQuery.Data.Feed.Link) {
    postId = post.id

    titleLabel?.text = post.url
    bylineLabel?.text = post.postedBy?.name
    votesLabel?.text = "\(post.votes.count) votes"
  }
}

