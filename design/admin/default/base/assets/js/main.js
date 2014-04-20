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
            /*console.log(item.attr("id"));
            console.log(item.index())*/
        }
    });
});