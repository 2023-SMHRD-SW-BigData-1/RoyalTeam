$.ajax({
	url: "/user/index/api/chartTop",
	method: "GET",
	dataType: "json",
	success: function(charttop) {
		console.log(charttop[0]);



//--------------------오른쪽 상단-----------------------------		
		Highcharts.chart('sh-drilldown', {
			chart: {
				type: 'column'
			},
			title: {
				align: 'left',
				text: '대한민국 전체 발전량 5순위'
			},
			subtitle: {
				align: 'left',
				text: '한 발전소에서 5위 이내 중복으로 들 수 있습니다.'
			},
			accessibility: {
				announceNewData: {
					enabled: true
				}
			},
			xAxis: {
				type: 'category'
			},
			yAxis: {
				title: {
					text: ''
				}

			},
			legend: {
				enabled: false
			},
			plotOptions: {
				series: {
					borderWidth: 0,
					dataLabels: {
						enabled: true,
						format: '{point.y}kW'
					}
				}
			},

			tooltip: {
				headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
				pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}kw</b> of total<br/>'
			},

			series: [
				{
					name: 'Generated',
					colorByPoint: true,
					data: [
						{
							name: charttop[0].IPPTNM,
							y: charttop[0].SUMM,
							drilldown: 'Chrome'
						},
						{
							name: charttop[1].IPPTNM,
							y: charttop[1].SUMM,
							drilldown: 'Safari'
						},
						{
							name: charttop[2].IPPTNM,
							y: charttop[2].SUMM,
							drilldown: 'Firefox'
						},
						{
							name: charttop[3].IPPTNM,
							y: charttop[3].SUMM,
							drilldown: 'Edge'
						},
						{
							name : charttop[4].IPPTNM,
							y: charttop[4].SUMM,
							drilldown: 'Opera'
						}
					]
				}
			],
			drilldown: {
				breadcrumbs: {
					position: {
						align: 'right'
					}
				},
				series: [
					{
						name: 'Chrome',
						id: 'Chrome',
						data: [
							[
								'v65.0',
								0.1
							],
							[
								'v64.0',
								1.3
							],
							[
								'v63.0',
								53.02
							],
							[
								'v62.0',
								1.4
							],
							[
								'v61.0',
								0.88
							],
							[
								'v60.0',
								0.56
							],
							[
								'v59.0',
								0.45
							],
							[
								'v58.0',
								0.49
							],
							[
								'v57.0',
								0.32
							],
							[
								'v56.0',
								0.29
							],
							[
								'v55.0',
								0.79
							],
							[
								'v54.0',
								0.18
							],
							[
								'v51.0',
								0.13
							],
							[
								'v49.0',
								2.16
							],
							[
								'v48.0',
								0.13
							],
							[
								'v47.0',
								0.11
							],
							[
								'v43.0',
								0.17
							],
							[
								'v29.0',
								0.26
							]
						]
					},
					{
						name: 'Firefox',
						id: 'Firefox',
						data: [
							[
								'v58.0',
								1.02
							],
							[
								'v57.0',
								7.36
							],
							[
								'v56.0',
								0.35
							],
							[
								'v55.0',
								0.11
							],
							[
								'v54.0',
								0.1
							],
							[
								'v52.0',
								0.95
							],
							[
								'v51.0',
								0.15
							],
							[
								'v50.0',
								0.1
							],
							[
								'v48.0',
								0.31
							],
							[
								'v47.0',
								0.12
							]
						]
					},
					{
						name: 'Internet Explorer',
						id: 'Internet Explorer',
						data: [
							[
								'v11.0',
								6.2
							],
							[
								'v10.0',
								0.29
							],
							[
								'v9.0',
								0.27
							],
							[
								'v8.0',
								0.47
							]
						]
					},
					{
						name: 'Safari',
						id: 'Safari',
						data: [
							[
								'v11.0',
								3.39
							],
							[
								'v10.1',
								0.96
							],
							[
								'v10.0',
								0.36
							],
							[
								'v9.1',
								0.54
							],
							[
								'v9.0',
								0.13
							],
							[
								'v5.1',
								0.2
							]
						]
					},
					{
						name: 'Edge',
						id: 'Edge',
						data: [
							[
								'v16',
								2.6
							],
							[
								'v15',
								0.92
							],
							[
								'v14',
								0.4
							],
							[
								'v13',
								0.1
							]
						]
					},
					{
						name: 'Opera',
						id: 'Opera',
						data: [
							[
								'v50.0',
								0.96
							],
							[
								'v49.0',
								0.82
							],
							[
								'v12.1',
								0.14
							]
						]
					}
				]
			}
		});
	},
	error: function(error) {
		console.error(error);
	}
});


// 현재 날짜 객체 생성
const currentDate = new Date();

// 한 달 전의 날짜 계산
currentDate.setMonth(currentDate.getMonth() - 2);

// 원하는 형식으로 날짜를 문자열로 변환
const year = currentDate.getFullYear();
const month = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // 월은 0부터 시작하므로 +1을 해줌
const day = currentDate.getDate().toString().padStart(2, '0');




$.ajax({
	url: '/user/index/api/dates', // 서버의 RestController 엔드포인트 경로
	method: 'POST', // 또는 'GET' 등 HTTP 메서드 지정
	anync : false,
	contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
	data: {
		dateString : `${year}-${month}-${day}`
	},
	success: function(response) {
		// 서버 응답을 처리합니다.
		console.log('=============================================');
		console.log('=============================================');
		console.log(response);
		console.log('=============================================');
		console.log('=============================================');
		

    const firstItem = response.dataList[0]; // dataList의 첫 번째 항목에 접근

        const responseData = firstItem.Q02;
		const responseData2 = firstItem.Q04
		const responseData3 = firstItem.Q06
		const responseData4 = firstItem.Q08
		const responseData5 = firstItem.Q10
		const responseData6 = firstItem.Q12
		const responseData7 = firstItem.Q14
		const responseData8 = firstItem.Q16
		const responseData9 = firstItem.Q18
		const responseData10 = firstItem.Q20
		const responseData11 = firstItem.Q22
		const responseData12 = firstItem.Q24
		
		function getOneMonthAgoDate() {
    const currentDate = new Date(); // 현재 날짜를 얻습니다.
    currentDate.setMonth(currentDate.getMonth() - 2); // 한 달 전으로 설정합니다.

    const month1 = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // 월을 두 자리로 포맷팅
    const day1 = currentDate.getDate().toString().padStart(2, '0'); // 일을 두 자리로 포맷팅
    const year1 = currentDate.getFullYear();

    const formattedDate = `${month1}/${day1}/${year1}`;
    return formattedDate;
}

const oneMonthAgoDate = getOneMonthAgoDate();
console.log(oneMonthAgoDate);
		

$.ajax({
	url: '/user/index/api/pre', // 서버의 RestController 엔드포인트 경로
	method: 'POST', // 또는 'GET' 등 HTTP 메서드 지정
	anync : false,
	contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
	data: {
		dateString : oneMonthAgoDate
	},
	success: function(response2) {
		// 서버 응답을 처리합니다.
		console.log('=============================================');
		console.log('=============================================');
		console.log(response2);
		console.log('=============================================');
		console.log('=============================================');
		    const firstItem2 = response2.dataList[0]; // dataList의 첫 번째 항목에 접근
		 const pre1 = firstItem2.P2;
		const pre2 = firstItem2.P4
		const pre3 = firstItem2.P6
		const pre4 = firstItem2.P8
		const pre5 = firstItem2.P10
		const pre6 = firstItem2.P12
		const pre7 = firstItem2.P14
		const pre8 = firstItem2.P16
		const pre9 = firstItem2.P18
		const pre10 = firstItem2.P20
		const pre11 = firstItem2.P22
		const pre12 = firstItem2.P24
		console.log(pre1);


//------------------왼쪽--------------------------
		 Highcharts.chart('sh-symbols-per', {
	chart: {
		type: 'spline'
	},
	title: {
		text: '개인 발전소 현황'
	},
	subtitle: {
		text: '하루마다 갱신 됩니다.' 
	},
	xAxis: {
		categories: ['2','4','6','8','10','12','14','16','18','20','22','24',''],
		accessibility: {
			description: 'Months of the year'
		}
	},
	yAxis: {
		title: {
			text: ''
		},
		labels: {
			format: '{value}Kw'
		}
	},
	tooltip: {
		crosshairs: true,
		shared: true
	},
	plotOptions: {
		spline: {
			marker: {
				radius: 4,
				lineColor: '#666666',
				lineWidth: 1
			}
		}
	},
	series: [{
		name: '발전량 데이터',
		marker: {
			symbol: 'square'
		},
		data: [responseData, responseData2, responseData3, responseData4, responseData5, responseData6, responseData7,  responseData8, responseData9, responseData10, responseData11, responseData12]

	}, {
		name: '예측 데이터',
		marker: {
			symbol: 'diamond'
		},
		data: [{
			y: pre1,
			marker: {
				symbol: ''
			},
			accessibility: {
				description: 'Snowy symbol, this is the coldest point in the chart.'
			}
		},  pre2, pre3, pre4, pre5, pre6, pre7, pre8, pre9, pre10, pre11]
	}]
});



    },
    error : function(error){
    console.error(error);
    }
    });
    


    },
    error : function(error){
    console.error(error);
    }
    });
    
    //--------------------오른쪽 하단-----------------------------
    // 제일 바깥쪽 ajax

$.ajax({
	url: '/user/index/api/allgen', // 서버의 RestController 엔드포인트 경로
	method: 'POST', // 또는 'GET' 등 HTTP 메서드 지정
	anync : false,
	contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
	data: {
		dateString : `${year}-${month}-${day}`
	},
	success: function(response) {
		// 서버 응답을 처리합니다.
		console.log('===================2번째 바깥쪽 ajax==========================');
		console.log('=============================================');
		console.log(response);
		console.log('=============================================');
		console.log('====================2번째 바깥쪽 ajax========================');
		
    const firstItem = response.dataList[0]; // dataList의 첫 번째 항목에 접근

        const res1 = firstItem.Q02_TOTAL;
		const res2 = firstItem.Q04_TOTAL;
		const res3 = firstItem.Q06_TOTAL;
		const res4 = firstItem.Q08_TOTAL;
		const res5 = firstItem.Q10_TOTAL;
		const res6 = firstItem.Q12_TOTAL;
		const res7 = firstItem.Q14_TOTAL;
		const res8 = firstItem.Q16_TOTAL;
		const res9 = firstItem.Q18_TOTAL;
		const res10 = firstItem.Q20_TOTAL;
		const res11 = firstItem.Q22_TOTAL;
		const res12 = firstItem.Q24_TOTAL;

		
		function getOneMonthAgoDate() {
    const currentDate = new Date(); // 현재 날짜를 얻습니다.
    currentDate.setMonth(currentDate.getMonth() - 2); // 한 달 전으로 설정합니다.

    const month1 = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // 월을 두 자리로 포맷팅
    const day1 = currentDate.getDate().toString().padStart(2, '0'); // 일을 두 자리로 포맷팅
    const year1 = currentDate.getFullYear();

    const formattedDate = `${month1}/${day1}/${year1}`;
    return formattedDate;
}

const oneMonthAgoDate = getOneMonthAgoDate();
console.log(oneMonthAgoDate);
		
		
		// 두번쨰 ajax -----------------------------------------------------------------

$.ajax({
	url: '/user/index/api/allpre', // 서버의 RestController 엔드포인트 경로
	method: 'POST', // 또는 'GET' 등 HTTP 메서드 지정
	anync : false,
	contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
	data: {
		dateString : oneMonthAgoDate
	},
	success: function(response2) {
	console.log("=================2번재 안쪽 ajax===============");
	console.log("=================2번재 안쪽 ajax===============");
	console.log("=================2번재 안쪽 ajax===============");
   console.log(response2);
   console.log("=================2번재 안쪽 ajax===============");
   console.log("=================2번재 안쪽 ajax===============");
   console.log("=================2번재 안쪽 ajax===============");
	
	  const firstItem2 = response2.dataList[0]; // dataList의 첫 번째 항목에 접근
		 const pre1 = firstItem2.P2_TOTAL;
		const pre2 = firstItem2.P4_TOTAL;
		const pre3 = firstItem2.P6_TOTAL;
		const pre4 = firstItem2.P8_TOTAL;
		const pre5 = firstItem2.P10_TOTAL;
		const pre6 = firstItem2.P12_TOTAL;
		const pre7 = firstItem2.P14_TOTAL;
		const pre8 = firstItem2.P16_TOTAL;
		const pre9 = firstItem2.P18_TOTAL;
		const pre10 = firstItem2.P20_TOTAL;
		const pre11 = firstItem2.P22_TOTAL;
		const pre12 = firstItem2.P24_TOTAL;
	



Highcharts.chart('sh-symbols-kr', {
    chart: {
        type: 'spline'
    },
    title: {
        text: '대한민국 전체 일일 발전량 및 예측량'
    },
    subtitle: {
        text: '하루마다 갱신 됩니다. '
    },
    xAxis: {
        categories: ['2', '4', '6', '8', '10', '12',
            '14', '16', '18', '20', '22', '24'],
        accessibility: {
            description: 'Months of the year'
        }
    },
    yAxis: {
        title: {
            text: ''
        },
        labels: {
            format: '{value}Kw'
        }
    },
    tooltip: {
        crosshairs: true,
        shared: true
    },
    plotOptions: {
        spline: {
            marker: {
                radius: 4,
                lineColor: '#666666',
                lineWidth: 1
            }
        }
    },
    series: [{
        name: '한국 총 일일 발전량',
        marker: {
            symbol: 'square'
        },
        data: [res1, res2, res3, res4, res5, res6, res7, res8, res9, res10, res11,res12]

    }, {
        name: '한국 총 일일 예측 발전량',
        marker: {
            symbol: 'diamond'
        },
        data: [ pre1, pre2, pre3, pre4, pre5, pre6, pre7, pre8, pre9, pre10, pre11,pre12]
    }]
});


    },
    error : function(error){
    console.error(error);
    }
    });
    


    },
    error : function(error){
    console.error(error);
    }
    });

 
// Data retrieved https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature

   



var defaultData = 'https://demo-live-data.highcharts.com/time-data.csv';
var urlInput = document.getElementById('fetchURL');
var pollingCheckbox = document.getElementById('enablePolling');
var pollingInput = document.getElementById('pollingTime');

function createChart() {
	Highcharts.chart('sh-livedata', {
		chart: {
			type: 'spline'
		},
		title: {
			text: 'Live Data'
		},
		accessibility: {
			announceNewData: {
				enabled: true,
				minAnnounceInterval: 15000,
				announcementFormatter: function(allSeries, newSeries, newPoint) {
					if (newPoint) {
						return 'New point added. Value: ' + newPoint.y;
					}
					return false;
				}
			}
		},
		data: {
			csvURL: urlInput.value,
			enablePolling: pollingCheckbox.checked === true,
			dataRefreshRate: parseInt(pollingInput.value, 10)
		}
	});

	if (pollingInput.value < 1 || !pollingInput.value) {
		pollingInput.value = 1;
	}
}

urlInput.value = defaultData;

// We recreate instead of using chart update to make sure the loaded CSV
// and such is completely gone.
pollingCheckbox.onchange = urlInput.onchange = pollingInput.onchange = createChart;

// Create the chart
createChart();





