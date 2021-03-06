$(function() {
    // $(".alert-success").fadeTo(2000, 500).slideUp(500, function(){{
    //     $(".alert-success").alert('close');
    // }});

    // $(".alert-warning").fadeTo(2000, 500).slideUp(500, function(){{
    //     $(".alert-warning").alert('close');
    // }});

    $("#popover").popover();

    // popover demo
    $("a[data-toggle=popover]")
      .popover()
      .click(function(e) {
        e.preventDefault()
    });

    $('[data-toggle="tooltip"]').tooltip({html:true});

    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });

    // cek new message
    function check_new_msg()
    {
        $.ajax({
            method: "GET",
            url: site_url + '/ajax/get_data/new_msg',
            success: function (data) {
                if (data > 0) {
                    $("#count-new-msg").html("");
                    $("#count-new-msg").html('<b class="label orange pull-right">' + data + '</b>');
                } else {
                    $("#count-new-msg").html("");
                }
            }
        });
    }

    check_new_msg();

    setInterval(function() {
        check_new_msg();
    }, 5000);
});
$('table').DataTable( {
    responsive: true,
    "language": {
        "decimal":        "",
        "emptyTable":     "Tidak ada data dalam tabel",
        "info":           "Menampilkan data ke _START_ sampai _END_ dari _TOTAL_ ",
        "infoEmpty":      "Tidak ada data",
        "infoFiltered":   "(Penyaringan dari total _MAX_ data)",
        "infoPostFix":    "",
        "thousands":      ",",
        "lengthMenu":     "Tampilkan&nbsp;&nbsp;&nbsp;  _MENU_  data",
        "loadingRecords": "Memuat...",
        "processing":     "Menunggu...",
        "search":         "Cari:&nbsp;&nbsp;&nbsp;",
        "zeroRecords":    "Tidak ada data yang sesuai",
        "paginate": {
            "first":      "Pertama",
            "last":       "Terakhir",
            "next":       "Selanjutnya",
            "previous":   "Sebelumnya"
        },
        "aria": {
            "sortAscending":  ": Pengurutan Ascending",
            "sortDescending": ": Pengurutan sDescending"
        }
      }
} );