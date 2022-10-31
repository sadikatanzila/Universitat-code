(function ($) {
    $('.dropdown-menu a.dropdown-toggle').on('click', function (e) {
        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
        }
        var $subMenu = $(this).next(".dropdown-menu");
        $subMenu.toggleClass('show');

        $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
            $('.dropdown-submenu .show').removeClass("show");
        });

        return false;
    });
});


//chart code start here

var barChart = document.getElementById('barChart').getContext('2d');

// Global Options
Chart.defaults.global.defaultFontFamily = 'Lato';
Chart.defaults.global.defaultFontSize = 18;
Chart.defaults.global.defaultFontColor = '#777';

//pie chart start here
var pieChart = document.getElementById('pieChart').getContext('2d');
var graduatePerProgramChart = new Chart(pieChart, {
    type: 'pie', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
    data: {
        labels: ['Arts', 'Business Administration','Engineering & Technology','Law' ],
        datasets: [{
            label: 'Student',
            data: [
              840,
              4017,
              1417,
              1900

            ],
            //backgroundColor:'green',
            backgroundColor: [
              'rgba(255, 99, 132, 0.6)',
              'rgba(54, 162, 235, 0.6)',
              'rgba(153, 255, 51,0.6)',
              'rgba(200, 159, 255,0.6)',
              'rgba(255, 0, 128,0.6)',
              'rgba(236, 236, 19,0.6)',
              
              'rgba(255, 0, 0,0.6)'
            ],
            borderWidth: 1,
            borderColor: '#777',
            hoverBorderWidth: 3,
            hoverBorderColor: '#000'
        }]
    },
    options: {
        title: {
            display: true,
            text: 'Graduate Students per Faculty',
            fontSize: 25
        },
        legend: {
            display: true,
            position: 'right',
            labels: {
                fontColor: '#000'
            }
        },
        layout: {
            padding: {
                left: 50,
                right: 0,
                bottom: 0,
                top: 0
            }
        },
        tooltips: {
            enabled: true
        }
    }
});
//pie chart end here
//chart code end here
