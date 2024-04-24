bcat = function(){
if(typeof jQuery !== 'function')
{
    var script = document.createElement('script');
    script.onload = function () {
        document.head.removeChild(script);
        bcat();
    };
    script.src = 'https://code.jquery.com/jquery-1.6.4.min.js';
    script.attributes['integrity'] ='sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=';
    script.attributes['crossorigin'] ='anonymous';

    document.head.appendChild(script);
    return;
}
var feedbackDiv = jQuery('#bcatFeedback');
if(!feedbackDiv.length)
{
    feedbackDiv = jQuery('<div id="bcatFeedback"></div>');
    var that = jQuery('#topContent-inner');
    if(that.length) 
        var insertFunction = that.prepend;
    else{
        that = jQuery('.shipTrackPageHeading');
        if(that.length) 
            insertFunction = that.before;
    }
    if(!insertFunction)
        return;
    var container = insertFunction.apply(that,['<div style="border:5px solid red;"><h1>Bluecare Tracking updater</h1></div>']);

    container.parent().find('h1').first().after(feedbackDiv);
}
feedbackDiv.html('Uploading, please wait ...');
try{
var eventsContainer = jQuery('#tracking-events-container');
if(eventsContainer.length === 1)
    eventsContainer = eventsContainer[0].outerHTML;
else
    eventsContainer = '';
var script = jQuery('script[type="a-state"][data-a-state="{\"key\":\"page-state\"}"]');
if(script.length === 1)
    script = script[0].outerHTML;
else
    script = '';
var pageContainer = jQuery('#pageContainer');
if(pageContainer.length === 1)
    pageContainer = pageContainer[0].outerHTML;
else
    pageContainer = '';
var data = '<html><head>'+script+'</head><body>'+pageContainer+eventsContainer+'</body></html>';
if(data.length < 100)
    data = document.documentElement.outerHTML;
jQuery.ajax({
    type: 'POST',
    url: 'https://www.bluecare.express/api/AddInfo',
    data: JSON.stringify({
        TrackingURL: location.href,
        TrackingPageHtml: data
    }),
    contentType: 'application/json',
    success: function(data, textStatus, jqXhr) {
            feedbackDiv.html("");
        if(data.Success)
            feedbackDiv.append(jQuery("<div>Tracking has been updated !</div>"));
        if(data.EmailSent)
            feedbackDiv.append(jQuery("<div>An email with the new tracking details has been sent.</div>"));
        if(data.BluecareExpressTrackingNumber)
            feedbackDiv.append(jQuery("<div>The Bluecare Express tracking number is "+data.BluecareExpressTrackingNumber+"</div>"));
        if(data.NonActiveCarrier)
            feedbackDiv.append(jQuery("<div>This is a "+data.Carrier+" parcel; your account is not set to convert these.</div>"));
        if(data.BillingError)
            feedbackDiv.append(jQuery("<div>"+data.BillingError+"</div>"));
        if(data.DeliveryStatus)
        {
            if(data.DeliveryStatus === "Delivered")
                feedbackDiv.append(jQuery("<div>No further updates are required. This parcel is now delivered :-)</div>"));
            else
               feedbackDiv.append(jQuery("<div>It is imperative that you continue to update this parcel until we know that it's delivered.</div>"));
        }
        if(data.Error)
               feedbackDiv.append(jQuery("<div>"+data.Error+"</div>"));
    },
    error:function( jqXhr, textStatus, errorThrown){
        feedbackDiv.html("<div>"+errorThrown+"</div>");
    },
    dataType: 'json'});
}
catch(error){
feedbackDiv.html('An error has occurred. Please report to support and include the full view-source text in a text file.<br/>'+error);
}
};
bcat();