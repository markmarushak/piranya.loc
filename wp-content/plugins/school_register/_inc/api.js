$(document).ready(function () {

    $('#zipCode').keyup(function () {
        var data = {
            action: 'zip_code',
            val: $(this).val()
        };
        $.ajax({
            url: ajaxurl,
            data: data,
            dataType: 'JSON'
        }).done(function (data) {
            $('#school-district').html('');
            $('#school-district').append('<option value="-">select district</option>');
            if(data.length > 0){
                for(var i=0; i<data.length; i++){
                    $('#school-district').append('<option value="'+data[i].assoc_id+'">'+data[i].name+'</option>')
                }
            }
        });
    });

    $('#school-district').change(function () {
        var valu = $(this).find('option:selected').val();
        var data = {action: 'schoolD', val: valu};
        $.ajax({
            url: ajaxurl,
            data: data,
            dataType: 'JSON'
        }).done(function (data) {
            $('#school').html('');
            $('#school').append('<option value="-">select school</option>');
            if(data.length > 0){
                for(var i=0; i<data.length; i++){
                    $('#school').append('<option value="'+data[i].account_id+'">'+data[i].long_name+'</option>')
                }
            }
        });
    });

    $('#school').change(function () {
        var valu = $(this).find('option:selected').val();
        var data = {action: 'school_grade', val: valu};
        $.ajax({
            method: 'GET',
            url: ajaxurl,
            data: data,
            dataType: 'JSON'
        }).done(function (data) {
            $('#grade').html('');
            $('#grade').append('<option value="-">select grade</option>');
            if(data.length > 0){
                for(var i=0; i<data.length; i++){
                    $('#grade').append('<option value="'+data[i].grade_level_id+'">'+data[i].description+'</option>')
                }
            }
        });
    });

});

function validate(evt) {
    var theEvent = evt || window.event;
    var key = theEvent.keyCode || theEvent.which;
    key = String.fromCharCode( key );
    var regex = /[0-9]|\./;
    if( !regex.test(key) ) {
        theEvent.returnValue = false;
        if(theEvent.preventDefault) theEvent.preventDefault();
    }
}