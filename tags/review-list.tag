<review-list>
  <table class="table table-striped table-hover">
    <thead>
      <th>Topic</th>
      <th>Review</th>
    </thead>
    <tbody>
      <tr each={ key in reviewKeys } key={ key }></tr>
    </tbody>
  </table>
  <review each={ key in reviewKeys } key={ key }></review>

  <script type="javascript">
    var apiUrl = "https://j0f1kw9je5.execute-api.us-east-1.amazonaws.com/latest/";
    var reviewKeys = [];
    var self = this;

    $.get(apiUrl, function( data ) {
      self.reviewKeys = data;
      self.update();
    });
  </script>
</review-list>