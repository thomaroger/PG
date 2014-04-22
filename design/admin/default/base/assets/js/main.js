jQuery(function($){
    $('.selectpicker').selectpicker();
    $('.datepicker').datepicker({autoclose: true})
    $("#start-publish-time").mask("99:99:99");
    $("#end-publish-time").mask("99:99:99");
    $(".icheck").iCheck({
        checkboxClass: 'icheckbox_square-grey',
        radioClass: 'iradio_square-grey'
    });
    $(".sortable").sortable({
        placeholder: 'list-group-item list-group-item-placeholder',
        forcePlaceholderSize: true,
        update : function(event, ui){
            var item = $(ui.item);
            console.log(item.attr("id"));
            console.log(item.index())
        }
    });
    $('#tabZone li a').each(function(index, elt){
        $(elt).click(function(){
            $('#layoutZone').attr('value', $(elt).attr('data-zone-id'));
        })
    });

    $('#layoutZone').attr('value', $($('#tabZone li a')[0]).attr('data-zone-id'));
});