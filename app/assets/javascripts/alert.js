(function () {
    $(document).ready(function () {
        $('.alert').fadeTo(2000, 500).fadeOut(500, function(){
            $(".alert").slideUp(500);
        });
    });
})();