$(document).ready(function () {
    var url = '../../wp-content/plugins/control-home/controller.php';

    $.ajax({
        url: ajaxurl,
        data: {action: 'select_home'},
        dataType: 'json',
        contentType: 'application/json',
        json: true
    }).done(function (response) {
        console.log(response);
        for (var i=0; i < response.length; i++){
            // var icon = response[i].icon.replace(/(\\"=")/g,'');
            // var ic = icon.replace(/(\\")/g,'');
            $('#main_info').append('<div class="wrap-item" data-id="'+response[i].id+'">' +
                // '<div class="icon-admin">'+ic+'</div>' +
                '<div class="icon-admin">'+response[i].icon+'</div>' +
                '<div class="text-admin">'+response[i].text+'</div>' +
                '</div>');
        }
    });

    $('#add_item_block').submit(function (ev) {
        ev.preventDefault();
        var name = $(this).find('input[name="name_section"]').val();
        var icon = $(this).find('input[name="icon"]').val();
        var text_ru = $(this).find('textarea[name="text-ru"]').val();
        var text_en = $(this).find('textarea[name="text-en"]').val();
        var text_de = $(this).find('textarea[name="text-de"]').val();
        var data = {
            action: 'insert_home',
            main: {
                name_section: name,
                icon: icon,
                text_ru: text_ru,
                text_en: text_en,
                text_de: text_de,
            }
        };
        $.post(ajaxurl,data,function (response) {
            console.log(response)
        });
    });

    $('#main_info .wrap-item').click(function() {
        console.log($(this));
    });







});