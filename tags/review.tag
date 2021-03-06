<review>
  <div show={loaded} class="panel panel-default col-lg-4">
    <div class="panel-heading">
      <a href="{review.link}" target="_blank">{review.header}</a>
    </div>
    <div class="panel-body">
      <span>
        <table class="table table-striped table-hover">
          <tbody>
            <tr each={ result in review.results }>
              <td>{ result }</td>
            </tr>
          </tbody>
        </table>
      </span>
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