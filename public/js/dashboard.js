/* globals Chart:false */

(() => {
    "use strict";

    // Graphs
    const ctx = document.getElementById("myChart");
    // eslint-disable-next-line no-unused-vars
    const myChart = new Chart(ctx, {
        type: "line",
        data: {
            labels: [
                "Sunday",
                "Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday",
            ],
            datasets: [
                {
                    data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
                    lineTension: 0,
                    backgroundColor: "transparent",
                    borderColor: "#007bff",
                    borderWidth: 4,
                    pointBackgroundColor: "#007bff",
                },
            ],
        },
        options: {
            plugins: {
                legend: {
                    display: false,
                },
                tooltip: {
                    boxPadding: 3,
                },
            },
        },
    });
})();

$(document).ready(function () {
    // Tangani tindakan klik pada tombol "Show"
    $(".view").on("click", function () {
        // Ambil target modal dari atribut data-target
        var targetModal = $(this).data("target");

        // Tampilkan modal dengan memanggil modal('show')
        $(targetModal).modal("show");
    });

    $(".update").on("click", function () {
        // Ambil target modal dari atribut data-target
        var targetModal = $(this).data("target");

        // Tampilkan modal dengan memanggil modal('show')
        $(targetModal).modal("show");
    });
});
