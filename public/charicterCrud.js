const getCharicters = () => {
	// index
	$.ajax({
		url: '/',
		method: 'GET',
		dataType: 'JSON',
		success: printResults, 
		fail: (err) => {
			console.error('/get is broke', err)
		}
	})
}

