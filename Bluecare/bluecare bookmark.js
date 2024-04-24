javascript:(function() {
	if(typeof window.bcat === 'undefined')
	{
		window.bcathost = 'bluecare.express';
		var st = document.createElement('script');
		st.setAttribute('src','https://'+window.bcathost+'/at.js');
		document.head.appendChild(st);
	}
	else
	{
		window.bcat();
	}
})()