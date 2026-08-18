$(function () {
    loadBlogs(1);

    // delegated click handler since pagination is re-rendered each time
    $(document).on("click", "#blogPagination a", function (e) {
        e.preventDefault();
        var page = $(this).data("page");
        if (page) {
            loadBlogs(page);
            $('html, body').animate({ scrollTop: $("#blogGrid").offset().top - 100 }, 300);
        }
    });
});

function loadBlogs(page) {
    $.ajax({
        type: "POST",
        url: "blogs.aspx/GetBlogs",
        data: JSON.stringify({ page: page }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            renderBlogs(data.blogs);
            renderPagination(data.currentPage, data.totalPages);
        },
        error: function (xhr) {
            console.error("Failed to load blogs:", xhr.responseText);
        }
    });
}

function renderBlogs(blogs) {
    var $grid = $("#blogGrid");
    $grid.empty();

    if (!blogs || blogs.length === 0) {
        $grid.append('<p style="text-align:center;color:#6b7580;">No blog posts found.</p>');
        return;
    }

    $.each(blogs, function (i, b) {
        var card =
            '<div class="vt-blog-card">' +
            '<div class="vt-blog-card-img" style="background-image: url(\'' + b.img + '\');">' +
            '<span class="vt-blog-card-cat">' + b.category + '</span>' +
            '</div>' +
            '<div class="vt-blog-card-body">' +
            '<div class="vt-blog-card-meta">' +
            '<span>&#128197; ' + b.postedOn + '</span>' +
            '<span>&#128100; ' + b.postedBy + '</span>' +
            '</div>' +
            '<h3><a href="blogs/' + b.url + '">' + b.title + '</a></h3>' +
            '<p>' + b.shortDesc + '</p>' +
            '<a href="blogs/' + b.url + '" class="vt-blog-card-link">Read More <span>&#8594;</span></a>' +
            '</div>' +
            '</div>';

        $grid.append(card);
    });
}

function renderPagination(currentPage, totalPages) {
    var $pagination = $("#blogPagination");
    $pagination.empty();

    if (totalPages <= 1) return;

    for (var i = 1; i <= totalPages; i++) {
        var activeClass = (i === currentPage) ? " active" : "";
        $pagination.append(
            '<a href="#" class="' + activeClass.trim() + '" data-page="' + i + '">' + i + '</a>'
        );
    }

    if (currentPage < totalPages) {
        $pagination.append('<a href="#" data-page="' + (currentPage + 1) + '">&#8250;</a>');
    }
}