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
            var url = '/admin/playgroundcms/blocklayoutzone/update/'+$('#layoutId').attr('value')+'/'+item.attr("data-block-layout-zone")+'/'+item.index();
            $.get(url);
        }
    });
    
    $('#tabZone li a').each(function(index, elt){
        $(elt).click(function(){
            $('#layoutZone').attr('value', $(elt).attr('data-zone-id'));
        })
    });

    $('#layoutZone').attr('value', $($('#tabZone li a')[0]).attr('data-zone-id'));

    $('.blockType').change(function(){
        var block =  $(this).val().split("\\");
        var blockName = block[block.length - 1];
        window.location.href = "/admin/playgroundcms/block/create/"+blockName;
    });
});