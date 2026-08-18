$(document).ready(function () {

    $(document.body).on("click", ".PublishSeo", function () {
        var id = $(this).attr('data-id');
        var ftr = $(this).prop("checked") ? "Yes" : "No";
        $.ajax({
            type: 'POST',
            url: "view-seo.aspx/PublishSeo",
            data: JSON.stringify({ id: id, ftr: ftr }),
            contentType: 'application/json; charset=utf-8',
            dataType: "json",
            success: function (data2) {
                if (data2.d.toString() === "Success") {
                    if (ftr === "Yes") {
                        $("#sts_" + id).removeAttr("class");
                        $("#sts_" + id).attr("class", "badge badge-outline-success");
                        $("#sts_" + id).text("Active");
                        Swal.fire({ title: "Activated !", text: "SEO record activated successfully.", icon: "success", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                    }
                    else {
                        $("#sts_" + id).removeAttr("class");
                        $("#sts_" + id).attr("class", "badge badge-outline-warning");
                        $("#sts_" + id).text("Inactive");
                        Swal.fire({ title: "Deactivated !", text: "SEO record set to inactive.", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false, footer: '', showCloseButton: true });
                    }
                }
                else {
                    Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong, please try again after some time.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                }
            },
            error: function () {
                Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong, please try again after some time.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
            }
        });
    });

    $(document.body).on('click', '.deleteItem', function () {
        var elem = $(this);
        var id = elem.attr('data-id');
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn btn-info w-xs me-2 mt-2",
            cancelButtonClass: "btn btn-danger w-xs mt-2",
            confirmButtonText: "Yes, delete it!",
            buttonsStyling: false,
            showCloseButton: true
        }).then(function (result) {
            if (result.value) {
                $.ajax({
                    type: 'POST',
                    url: "view-seo.aspx/Delete",
                    data: JSON.stringify({ id: id }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function (data2) {
                        if (data2.d.toString() === "Success") {
                            Swal.fire({ title: "Deleted!", text: "SEO record has been deleted.", icon: "success", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                            elem.closest('tr').remove();
                        }
                        else if (data2.d.toString() === "Permission") {
                            Swal.fire({ title: "Oops...", text: "Permission denied! Please contact to your administrator.", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false, footer: '', showCloseButton: true });
                        }
                        else {
                            Swal.fire({ title: "Oops...", text: "Something went wrong!", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false, footer: '', showCloseButton: true });
                        }
                    }
                });
            }
        });
    });
});