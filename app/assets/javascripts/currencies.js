var requestData = function(){
  var sendGetRequest = $.get('/currencies/requestinfo');

  sendGetRequest.done(function(response) {
    $('#ethusd_rate').html(response['ethusd_rate']);
    $('#ethidr_rate').html(response['ethidr_rate']);
  });
};

window.setInterval(function(){requestData()}, 500);
