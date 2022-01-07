$(function () {
    // Fungsi arsip
    $(".arsip-switch").change(function () {
        let id = $(this).data("id");
        let url = $(this).data("url");
        let isHide = this.checked == true ? 1 : 0;

        $.ajax({
            url: url,
            data: {
                id: id,
                isHide: isHide,
            },
            method: "GET",
            success: function (res) {
                $("img#" + id).toggleClass("hide");
            },
        });
    });
});
