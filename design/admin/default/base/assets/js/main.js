jQuery(document).ready(function()
{
    'use strict';
    
    if(jQuery('#tabs').size() > 0) {
        $('#tabs').tab();
    }
    
    if(jQuery('.datepicker').size() > 0) {
        $('.datepicker').datepicker({
            dateFormat : 'dd/mm/yy'
        });
    }
    
    if(jQuery('.date').size() > 0) {
        $('.date').datepicker({
            dateFormat : 'dd/mm/yy'
        });
    }
    
    // INIT GRISTER IF EXIST
    if(jQuery('.gridster').size() > 0) {
        jQuery(".gridster ul").gridster({
            widget_margins: [10, 10],
            widget_base_dimensions: [250, 250]
        });
    }
    
    if(jQuery('#answer_entry').size() > 0) {
        var template = $('#answer_entry > fieldset > span');
        var datatemplate = $('#answer_entry > fieldset > span').data('template');
        template.data('template', '<fieldset id="answers__index__">'+datatemplate+'</fieldset>');
        
        $('#answer_entry button').live('click',function(){
            $(this).parent().parent().empty();
            return false;
        });
    }
    
    if(jQuery('#prize_entry button').size() > 0) {
        var template = $('#prize_entry > fieldset > span');
        var datatemplate = $('#prize_entry > fieldset > span').data('template');
        template.data('template', '<fieldset id="prizes__index__">'+datatemplate+'</fieldset>');
        
        $('#prize_entry button').on('click',function()
        {
            $(this).parent().empty();
            return false;
        });
    }

});

$(document).ready(function(){
    
    function loadGallery(percent) {
        $('#gallery-progress .progress-bar').css('width', percent + '%');
        if(percent<100) {
            setTimeout(function() {
                loadGallery(percent+1);
            }, 1);
        }

        var $container = $('#row');
    
        $container.isotope({
            itemSelector : '.element'
        });    
    }
    loadGallery(0);


    $('.show-carrousel').click(function() {
        // place les bons media dans le carrousel
        $('.carousel-inner').empty('');
        var cpt = 0;
        $(".isotope .isotope-item").each(function(){ 
            if(!$(this).hasClass('isotope-hidden')) {
                $('.' + $(this).attr('data-id')).clone().appendTo('.carousel-inner')
                cpt++;
            }
        });

        // Gestion Caroussel OU image
        $('#carousel-example-generic').find('.carousel-control').show();
        if(cpt==1) {
            $('#carousel-example-generic').find('.carousel-control').hide();
        }

        // affiche le bon media en active
        $(".carousel-inner .item").each(function(){ 
            if($(this).hasClass('active')) {
                $(this).removeClass('active');
            }
        });

        $('.carousel-inner .' + $(this).attr('data-id')).addClass('active');
    });


    // couper la vidÃ©o
    $('#modal_show').on('hide.bs.modal', function () {
        $(this).find('.carousel-inner').empty();
    })


    setTimeout(function() {
        $('#gallery-progress').slideUp('fast');
        $('#row').fadeIn('slow');
        $('#show-all').trigger('click');
    }, 1000);

    $('#urlform').focusout(function () {
        var value = $(this).val();
        $('#preview-img').attr('src', value);
    });

    $(".toggle-inputs-video-pre").click(function() {
        $(".input-video-pre").toggle();
        $(this).toggleClass("active");
    });

});




function add_answer() {
    var currentCount = $('#answer_entry textarea').length;
    var template = $('#answer_entry > fieldset > span').data('template');
    template = template.replace(/__index__/g, currentCount);
    $('#answer_entry').append(template);
    $('#answer_entry').append('<hr/>');

    return false;
}

function add_prize() {
    var currentCount = $('#prize_entry textarea').length;
    var template = $('#prize_entry > span').data('template');
    template = template.replace(/__index__/g, currentCount);
    $('#prize_entry').append(template);

    return false;
}


$(document).ready(function() {
    $('.multiselect').multiselect({
        enableCaseInsensitiveFiltering: true,
        includeSelectAllOption: true,
        label: function(element) {
        return $(element).html()+' ('+$(element).val()+')';
        }
    });
});


$(document).ready(function(){
    $('.contentExpert').click(function(){
        var status = $('.contentExpert').is(':checked');
        if (status === true) {
            $('.form-arbo').show();
        } else {
            $('.form-arbo').hide();
        }
    });
});