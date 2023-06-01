const xValues = [];
const yValues = [];

const xValues2 = [];
const yValues2 = [];

const xValues3 = [];
const yValues3 = [];

const xValues4 = [];
const yValues4 = [];

var myChart;
var myChart3;
var myChart2;
var myChart4;


var ctx;
var ctx2;
var ctx3;
var ctx4;
var ctx5;

var selectedOption, selectedOption1;
var selectedOptionText, selectedOptionText1;
var selectedOption2, selectedOption3;
var chartData;


var labels1 = [], values1 = [];
var labels2 = [], values2 = [];


var lang = "en-US";
var year = 2018;


window.onload = async function () {

    importData();
    getChart5();
    getChart6();


    const selectElement = document.getElementById('graph');
    selectElement.addEventListener('change', (event) => {
        selectedOption = event.target.value;
        selectedOptionText = selectElement.options[selectElement.selectedIndex].text;
    });


    const selectElement1 = document.getElementById('format');
    selectElement1.addEventListener('change', (event1) => {
        selectedOption1 = event1.target.value;
        selectedOptionText1 = selectElement.options[selectElement.selectedIndex].text;
    });

    const selectElement2 = document.getElementById('season');
    selectElement2.addEventListener('change', (event2) => {
        selectedOption2 = event2.target.value;
    });

    const selectElement3 = document.getElementById('area');
    selectElement3.addEventListener('change', (event3) => {
        selectedOption3 = event3.target.value;
    });

    $(".js-range-slider").ionRangeSlider({
        skin: "round",
        grid: true,
        from: new Date().getMonth(),
        values: [
            "Март", "Апрель", "Май", "Июнь"
        ]
    });

    $(".js-range-slider1").ionRangeSlider({
        skin: "round1",
        grid: true,
        from: new Date().getMonth(),
        values: [
            "Март", "Апрель", "Май", "Июнь"
        ]
    });


    const response = await fetch(
        'http://80.78.241.80:3200/api/S1v1ANDS2v1');
    const data = await response.json();
    length = data.length;

    for (let i = 0; i < length; i++) {
        xValues.push(data[i].h);
        yValues.push(data[i].v);
    }
    getChart();


    $("#demo_2").ionRangeSlider({
        skin: "round",
        type: "double",
        values: [
            "Март", "Апрель", "Май", "Июнь"
        ],
        from: 0,
        to: 1,
        onChange: async function (data) {

            if (data.from === 0 && data.to === 1) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/S1v1ANDS2v1');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS1[i].h);
                    yValues.push(dataS1[i].v);
                }

                getChart();
            } else if (data.from === 1 && data.to === 2) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS2 = await fetch(
                    'http://80.78.241.80:3200/api/S2v1ANDS3v1');
                const dataS2 = await responseS2.json();
                length = dataS2.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS2[i].h);
                    yValues.push(dataS2[i].v);
                }

                getChart();
            } else if (data.from === 2 && data.to === 3) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS3 = await fetch(
                    'http://80.78.241.80:3200/api/S3v1ANDS4v1');
                const dataS3 = await responseS3.json();
                length = dataS3.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS3[i].h);
                    yValues.push(dataS3[i].v);
                }

                getChart();
            } else if (data.from === 0 && data.to === 0) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS4 = await fetch(
                    'http://80.78.241.80:3200/api/u1S1v1');
                const dataS4 = await responseS4.json();
                length = dataS4.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS4[i].h);
                    yValues.push(dataS4[i].v);
                }

                getChart();
            } else if (data.from === 1 && data.to === 1) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS5 = await fetch(
                    'http://80.78.241.80:3200/api/u1S2v1');
                const dataS5 = await responseS5.json();
                length = dataS5.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS5[i].h);
                    yValues.push(dataS5[i].v);
                }

                getChart();
            } else if (data.from === 2 && data.to === 2) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS6 = await fetch(
                    'http://80.78.241.80:3200/api/u1S3v1');
                const dataS6 = await responseS6.json();
                length = dataS6.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS6[i].h);
                    yValues.push(dataS6[i].v);
                }

                getChart();
            } else if (data.from === 3 && data.to === 3) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS7 = await fetch(
                    'http://80.78.241.80:3200/api/S3v1');
                const dataS7 = await responseS7.json();
                length = dataS7.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS7[i].h);
                    yValues.push(dataS7[i].v);
                }

                getChart();
            } else if (data.from === 0 && data.to === 2) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS88 = await fetch(
                    'http://80.78.241.80:3200/api/S3v2');
                const dataS88 = await responseS88.json();
                length = dataS88.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS88[i].h);
                    yValues.push(dataS88[i].v);
                }

                getChart();
            } else if (data.from === 0 && data.to === 3) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS8 = await fetch(
                    'http://80.78.241.80:3200/api/S3v1');
                const dataS8 = await responseS8.json();
                length = dataS8.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS8[i].h);
                    yValues.push(dataS8[i].v);
                }

                getChart();
            } else if (data.from === 1 && data.to === 3) {

                xValues.splice(0, xValues.length);
                yValues.splice(0, yValues.length);

                const responseS9 = await fetch(
                    'http://80.78.241.80:3200/api/S2v2');
                const dataS9 = await responseS9.json();
                length = dataS9.length;

                for (let i = 0; i < length; i++) {
                    xValues.push(dataS9[i].h);
                    yValues.push(dataS9[i].v);
                }

                getChart();
            }


        }
    });


    const response2 = await fetch(
        'http://80.78.241.80:3200/api/S1v2ANDS2v2');
    const data2 = await response2.json();
    length = data2.length;

    for (let i = 0; i < length; i++) {
        xValues2.push(data2[i].h);
        yValues2.push(data2[i].v);
    }
    getChart2();


    $("#demo_1").ionRangeSlider({
        skin: "round1",
        type: "double",
        values: [
            "Март", "Апрель", "Май", "Июнь"
        ],
        from: 0,
        to: 1,
        onChange: async function (data1) {

            if (data1.from === 0 && data1.to === 1) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/S1v2ANDS2v2');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 1 && data1.to === 2) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/S2v2ANDS3v2');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 2 && data1.to === 3) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/S1v3ANDS4v2');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 0 && data1.to === 0) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S1v22');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 1 && data1.to === 1) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S1v22');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 2 && data1.to === 2) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S1v22');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 3 && data1.to === 3) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S1v22');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 0 && data1.to === 2) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S1v22');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 0 && data1.to === 3) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S3v2');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            } else if (data1.from === 1 && data1.to === 3) {

                xValues2.splice(0, xValues2.length);
                yValues2.splice(0, yValues2.length);

                const responseS1 = await fetch(
                    'http://80.78.241.80:3200/api/u1S2v2');
                const dataS1 = await responseS1.json();
                length = dataS1.length;

                for (let i = 0; i < length; i++) {
                    xValues2.push(dataS1[i].h);
                    yValues2.push(dataS1[i].v);
                }

                getChart2();
            }


        }
    });




    const response3 = await fetch(
        'http://80.78.241.80:3200/api/u1S3v1');
    const data3 = await response3.json();
    length = data3.length;

    for (let i = 0; i < length; i++) {
        xValues3.push(data3[i].h);
        yValues3.push(data3[i].v);
    }

    getChart3();

    const slider3 = document.getElementById("myRange3");
    const output3 = document.getElementById("demo3");
    output3.innerHTML = slider3.value;

    slider3.oninput = async function () {
        output3.innerHTML = this.value;

        if (this.value === 'Март') {
            xValues3.splice(0, xValues3.length);
            yValues3.splice(0, yValues3.length);

            const responseS1 = await fetch(
                'http://80.78.241.80:3200/api/u1S1v1');
            const dataS1 = await responseS1.json();
            length = dataS1.length;

            for (let i = 0; i < length; i++) {
                xValues3.push(dataS1[i].h);
                yValues3.push(dataS1[i].v);
            }

            getChart3();


        } else if (this.value === 'Апрель') {
            xValues3.splice(0, xValues3.length);
            yValues3.splice(0, yValues3.length);

            const responseS2 = await fetch(
                'http://80.78.241.80:3200/api/u1S2v1');
            const dataS2 = await responseS2.json();
            length = dataS2.length;

            for (let i = 0; i < length; i++) {
                xValues3.push(dataS2[i].h);
                yValues3.push(dataS2[i].v);
            }

            getChart3();

        } else if (this.value === 'Май') {
            xValues3.splice(0, xValues3.length);
            yValues3.splice(0, yValues3.length);

            const responseS3 = await fetch(
                'http://80.78.241.80:3200/api/u1S3v1');
            const dataS3 = await responseS3.json();
            length = dataS3.length;

            for (let i = 0; i < length; i++) {
                xValues3.push(dataS3[i].h);
                yValues3.push(dataS3[i].v);
            }

            getChart3();
        }
        else if (this.value === 'Июнь') {
            xValues3.splice(0, xValues3.length);
            yValues3.splice(0, yValues3.length);

            const responseS3 = await fetch(
                'http://80.78.241.80:3200/api/S4v1');
            const dataS3 = await responseS3.json();
            length = dataS3.length;

            for (let i = 0; i < length; i++) {
                xValues3.push(dataS3[i].h);
                yValues3.push(dataS3[i].v);
            }

            getChart3();
        }
    }



    const responseS3 = await fetch(
        'http://80.78.241.80:3200/api/S4v2');

    const dataS3 = await responseS3.json();
    length = dataS3.length;

    for (let i = 0; i < length; i++) {
        xValues4.push(dataS3[i].h);
        yValues4.push(dataS3[i].v);
    }

    getChart4();

    getChart4();



    const slider4 = document.getElementById("myRange4");
    const output4 = document.getElementById("demo4");
    output4.innerHTML = slider4.value;

    slider4.oninput = async function () {
        output4.innerHTML = this.value;

        if (this.value === 'Март') {
            xValues4.splice(0, xValues4.length);
            yValues4.splice(0, yValues4.length);

            const responseS1 = await fetch(
                'http://80.78.241.80:3200/api/u1S1v22');
            const dataS1 = await responseS1.json();
            length = dataS1.length;

            for (let i = 0; i < length; i++) {
                xValues4.push(dataS1[i].h);
                yValues4.push(dataS1[i].v);
            }

            getChart4();


        } else if (this.value === 'Апрель') {
            xValues4.splice(0, xValues4.length);
            yValues4.splice(0, yValues4.length);

            const responseS2 = await fetch(
                'http://80.78.241.80:3200/api/u1S2v2');
            const dataS2 = await responseS2.json();
            length = dataS2.length;

            for (let i = 0; i < length; i++) {
                xValues4.push(dataS2[i].h);
                yValues4.push(dataS2[i].v);
            }

            getChart4();

        } else if (this.value === 'Май') {
            xValues4.splice(0, xValues4.length);
            yValues4.splice(0, yValues4.length);

            const responseS3 = await fetch(
                'http://80.78.241.80:3200/api/u1S3v2');
            const dataS3 = await responseS3.json();
            length = dataS3.length;

            for (let i = 0; i < length; i++) {
                xValues4.push(dataS3[i].h);
                yValues4.push(dataS3[i].v);
            }

            getChart4();
        }
        else if (this.value === 'Июнь') {
            xValues4.splice(0, xValues4.length);
            yValues4.splice(0, yValues4.length);

            const responseS3 = await fetch(
                'http://80.78.241.80:3200/api/S4v2');
            const dataS3 = await responseS3.json();
            length = dataS3.length;

            for (let i = 0; i < length; i++) {
                xValues4.push(dataS3[i].h);
                yValues4.push(dataS3[i].v);
            }

            getChart4();
        }
    }




}

function getChart() {
    const area = document.getElementsByClassName('area-chart')[0];
    area.innerHTML = "";

    var htmlchart = `<canvas id="myChart"></canvas>`
    document.getElementsByClassName('area-chart')[0].insertAdjacentHTML('afterbegin', htmlchart);
    ctx = document.getElementById("myChart");


    myChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: xValues,
                datasets: [{
                    // backgroundColor: "rgba(0,0,255,0.5)",
                    // borderColor: "rgba(0,0,0,0.1)",
                    data: yValues,
                    lineTension: 0,
                    fill: false,
                    radius: 0,
                    borderColor: "rgba(0,0,255,0.5)"
                }]
            },
            options: {
                devicePixelRatio: 2,
                legend: {display: false},
                title: {
                    display: true,
                    fontSize: 25
                },

            },
        }
    )

}

function getChart2() {
    const area2 = document.getElementsByClassName('area-chart')[3];
    area2.innerHTML = "";

    var htmlchart2 = `<canvas id="myChart2"></canvas>`
    document.getElementsByClassName('area-chart')[3].insertAdjacentHTML('afterbegin', htmlchart2);
    ctx2 = document.getElementById("myChart2");


    myChart2 = new Chart(ctx2, {
            type: "line",
            data: {
                labels: xValues2,
                datasets: [{
                    // backgroundColor: "rgba(255,0,128,0.5)",
                    // borderColor: "rgba(0,0,0,0.1)",
                    data: yValues2,
                    lineTension: 0,
                    fill: false,
                    radius: 0,
                    borderColor: "rgba(255,0,128,0.5)"
                }]
            },
        options: {
            devicePixelRatio: 2,
            legend: {display: false},
            title: {
                display: true,
                fontSize: 25
            },

        },
        }
    )

}


function getChart3() {
    const area3 = document.getElementsByClassName('area-chart')[1];
    area3.innerHTML = "";

    var htmlchart3 = `<canvas id="myChart3"></canvas>`
    document.getElementsByClassName('area-chart')[1].insertAdjacentHTML('afterbegin', htmlchart3);
    ctx3 = document.getElementById("myChart3");


    myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: xValues3,
                datasets: [{
                    // backgroundColor: "rgba(0,0,255,0.5)",
                    // borderColor: "rgba(0,0,0,0.1)",
                    data: yValues3,
                    lineTension: 0,
                    fill: false,
                    radius: 0,
                    borderColor: "rgba(0,0,255,0.5)"
                }]
            },
        options: {
            devicePixelRatio: 2,
            legend: {display: false},
            title: {
                display: true,
                fontSize: 25
            },

        },
        }
    )
}


function getChart4() {
    const area4 = document.getElementsByClassName('area-chart')[4];
    area4.innerHTML = "";

    var htmlchart4 = `<canvas id="myChart4"></canvas>`
    document.getElementsByClassName('area-chart')[4].insertAdjacentHTML('afterbegin', htmlchart4);
    ctx4 = document.getElementById("myChart4");


    myChart4 = new Chart(ctx4, {
            type: "line",
            data: {
                labels: xValues4,
                datasets: [{
                    // backgroundColor: "rgba(255,0,128,0.5)",
                    // borderColor: "rgba(0,0,0,0.1)",
                    data: yValues4,
                    lineTension: 0,
                    fill: false,
                    radius: 0,
                    borderColor: "rgba(255,0,128,0.5)"
                }]
            },
        options: {
            devicePixelRatio: 2,
            legend: {display: false},
            title: {
                display: true,
                fontSize: 25
            },

        },
        }
    )

}

function getChart5() {
    const area5 = document.getElementsByClassName('area-chart')[5];
    area5.innerHTML = "";

    var htmlchart5 = `<canvas id="myChart5"></canvas>`
    document.getElementsByClassName('area-chart')[5].insertAdjacentHTML('afterbegin', htmlchart5);
    ctx5 = document.getElementById("myChart5");


    new Chart(ctx5, {
            type: "line",
            data: {
                labels: labels2,
                datasets: [{
                    // backgroundColor: "rgba(255,0,128,0.5)",
                    // borderColor: "rgba(0,0,0,0.1)",
                    data: values2,
                    lineTension: 0,
                    fill: false,
                    radius: 0,
                    borderColor: "rgba(255,0,128,0.5)"
                }]
            },
        options: {
            devicePixelRatio: 2,
            legend: {display: false},
            title: {
                display: true,
                fontSize: 25
            },

        },
        }
    )
}

function getChart6() {
    const area6 = document.getElementsByClassName('area-chart')[2];
    area6.innerHTML = "";

    var htmlchart6 = `<canvas id="myChart6"></canvas>`
    document.getElementsByClassName('area-chart')[2].insertAdjacentHTML('afterbegin', htmlchart6);
    ctx5 = document.getElementById("myChart6");


    new Chart(ctx5, {
            type: "line",
            data: {
                labels: labels1,
                datasets: [{
                    // backgroundColor: "rgba(0,0,255,0.5)",
                    // borderColor: "rgba(0,0,0,0.1)",
                    data: values1,
                    lineTension: 0,
                    fill: false,
                    radius: 0,
                    borderColor: "rgba(0,0,255,0.5)"
                }]
            },
        options: {
            devicePixelRatio: 2,
            legend: {display: false},
            title: {
                display: true,
                fontSize: 25
            },

        },
        }
    )

}


function addData() {
    const inputH = document.getElementsByClassName('hValue');
    const dataH = [];

    const inputV = document.getElementsByClassName('vValue');
    const dataV = [];

    for (let i = 0; i < inputH.length; i++) {
        dataH.push(inputH[i].value);
        dataV.push(inputV[i].value);

        if (selectedOption3 === 'one') {
            if (selectedOption2 === 'mar') {

                fetch('http://80.78.241.80:3200/api/u1S1v1', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();

            } else if (selectedOption2 === 'apr') {

                fetch('http://80.78.241.80:3200/api/u1S2v1', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();


            } else if (selectedOption2 === 'may') {

                fetch('http://80.78.241.80:3200/api/u1S3v1', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();

            } else if (selectedOption2 === 'jun') {

                fetch('http://80.78.241.80:3200/api/S4v1', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();

            }
        } else if (selectedOption3 === 'two') {
            if (selectedOption2 === 'mar') {

                fetch('http://80.78.241.80:3200/api/u1S1v22', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();

            } else if (selectedOption2 === 'apr') {

                fetch('http://80.78.241.80:3200/api/u1S2v2', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();


            } else if (selectedOption2 === 'may') {

                fetch('http://80.78.241.80:3200/api/u1S3v2', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();

            } else if (selectedOption2 === 'jun') {

                fetch('http://80.78.241.80:3200/api/S4v2', {
                    method: 'POST',
                    mode: 'cors',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        "h": Number(dataH[i]),
                        "v": Number(dataV[i])


                    })


                })
                    .then(response => response.json())
                    .then(data => {

                        window.location.href = '#';
                        location.reload();
                    })
                    .catch();
                window.location.href = '#';
                location.reload();

            }
        }
    }
    window.location.href = '#';
    location.reload();

}


function exportChartTXT() {
    // const doc = new jsPDF();
    // const imgData = ctx.toDataURL("image/png");
    // doc.addImage(imgData, 10, 10); // adjust the x and y positions as needed
    // doc.save("chart-data.pdf");


    if (selectedOption === 'archiveV1' || null) {
        chartData = myChart.data.datasets[0].data;

    } else if (selectedOption === 'archiveV2') {
        chartData = myChart3.data.datasets[0].data;

    } else if (selectedOption === 'actualV1') {
        chartData = myChart2.data.datasets[0].data;
    }

    const chartDataString = chartData.map(d => d.toString()).join("\n");
    const blob = new Blob([chartDataString], {type: "text/plain;charset=utf-8"});
    const link = document.createElement("a");
    link.download = selectedOptionText + ".txt";
    link.href = window.URL.createObjectURL(blob);
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
}

function exportChartPDF() {
    var imgData;


    if (selectedOption === 'archiveV1') {
        imgData = ctx.toDataURL("image/png");

    } else if (selectedOption === 'archiveV2') {
        imgData = ctx2.toDataURL('image/png');

    } else if (selectedOption === 'actualV1') {
        imgData = ctx3.toDataURL("image/png");
    }


    try {
        const doc = new jsPDF();
        doc.addImage(imgData, 'JPEG', 10, 10, 190, 90);
        doc.save(selectedOptionText + ".pdf");
    } catch (err) {
        var x = document.getElementById("snackbar");
        x.className = "show";
        setTimeout(function () {
            x.className = x.className.replace("show", "");
        }, 3000);
    }
}

function exportChart() {
    if (selectedOption1 === 'txt') {
        exportChartTXT();
    } else if (selectedOption1 === 'pdf') {
        exportChartPDF();
    }
}

function importData() {
    const myButton = document.getElementById('myButton');

    myButton.addEventListener('click', () => {
        const input = document.createElement('input');
        input.type = 'file';
        input.click();

        input.addEventListener('change', (event) => {
            const file = event.target.files[0];
            const reader = new FileReader();

            reader.addEventListener('load', (event) => {
                const text = event.target.result;

                var lines = text.split("\n");


                var length;

                if (lines != null) {
                    length = lines.length;
                }

                if (file.name === 's1v2.txt') {
                    labels2.splice(0, labels2.length);
                    labels2.splice(0, labels2.length);

                    for (var i = 0; i < length; i++) {
                        var partsS1V2 = lines[i].split(",");
                        labels2.push(partsS1V2[0]);
                        values2.push(partsS1V2[1]);
                    }
                } else if (file.name === 's2v2.txt') {
                    labels2.splice(0, labels2.length);
                    labels2.splice(0, labels2.length);

                    for (var k = 0; k < length; k++) {
                        var partsS2V2 = lines[k].split(",");
                        labels2.push(partsS2V2[0]);
                        values2.push(partsS2V2[1]);
                    }
                } else if (file.name === 's3v2.txt') {
                    labels2.splice(0, labels2.length);
                    labels2.splice(0, labels2.length);

                    for (var t = 0; t < length; t++) {
                        var partsS3V2 = lines[t].split(",");
                        labels2.push(partsS3V2[0]);
                        values2.push(partsS3V2[1]);
                    }
                } else if (file.name === 's1v1.txt') {
                    labels1.splice(0, labels1.length);
                    labels1.splice(0, labels1.length);

                    for (var j = 0; j < length; j++) {
                        var partsS1V1 = lines[j].split(",");
                        labels1.push(partsS1V1[0]);
                        values1.push(partsS1V1[1]);
                    }
                } else if (file.name === 's2v1.txt') {
                    labels1.splice(0, labels1.length);
                    labels1.splice(0, labels1.length);

                    for (var y = 0; y < length; y++) {
                        var partsS2V1 = lines[y].split(",");
                        labels1.push(partsS2V1[0]);
                        values1.push(partsS2V1[1]);
                    }
                } else if (file.name === 's3v1.txt') {
                    labels1.splice(0, labels1.length);
                    labels1.splice(0, labels1.length);

                    for (var e = 0; e < length; e++) {
                        var partsS3V1 = lines[e].split(",");
                        labels1.push(partsS3V1[0]);
                        values1.push(partsS3V1[1]);
                    }
                }

            });

            reader.readAsText(file);
        });
    });


}





























