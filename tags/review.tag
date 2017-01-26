<review>
  <div show={loaded} class="panel panel-default col-md-5">
    <div class="panel-heading">{review.header}</div>
    <div class="panel-body">
      <span>{review.body}</span>
      <br/>
      <a href={review.link}>{review.header}</a>
    </div>
  </div> 

  <spinner show={!loaded}></spinner>

  this.loaded = false;
  var apiUrl = "https://j0f1kw9je5.execute-api.us-east-1.amazonaws.com/latest/";
  var url = apiUrl + opts.key;
  var self = this;

  $.get(url, function( review ) {
    self.review = review;
    self.loaded = true;
    self.update();
  });
</review>