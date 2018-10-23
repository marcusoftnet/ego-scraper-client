riot.tag2('review-list', '<table class="table table-striped table-hover"> <th> <td>Topic</td> <td>Review</td> </th> <review each="{key in reviewKeys}" key="{key}"></review> </table>', '', '', function(opts) {
    var apiUrl = "https://j0f1kw9je5.execute-api.us-east-1.amazonaws.com/latest/";
    var reviewKeys = [];
    var self = this;

    $.get(apiUrl, function( data ) {
      self.reviewKeys = data;
      self.update();
    });
});
riot.tag2('review', '<tr show="{loaded}"> <td> <a href="{review.link}" target="_blank">{review.header}</a> </td> <td> <div class="panel-body"> <span> <table class="table table-striped table-hover "> <tbody> <tr each="{result in review.results}"> <td>{result}</td> </tr> </tbody> </table> </span> </div> </td> </tr> <tr show="{!loaded}"> <td colspan="2"> <spinner></spinner> </td> </tr>', '', '', function(opts) {

  this.loaded = false;
  var apiUrl = "https://j0f1kw9je5.execute-api.us-east-1.amazonaws.com/latest/";
  var url = apiUrl + opts.key;
  var self = this;

  $.get(url, function( review ) {
    self.review = review;
    self.loaded = true;
    self.update();
  });
});
riot.tag2('spinner', '<div class="panel panel-default col-lg-4"> <div class="panel-body"> <i class="fa fa-spinner fa-spin" style="font-size:24px"></i> </div> </div>', '', '', function(opts) {
});