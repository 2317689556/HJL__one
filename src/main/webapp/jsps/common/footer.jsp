﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>


      

<script type="text/javascript">
    //面包屑返回值
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);
    $('.no-radius').on('click', function(){
        var cname = $(this).attr("title");
        var chref = $(this).attr("href");
        var cnames = parent.$('.Current_page').html();
        var herf = parent.$("#iframe").attr("src");
        parent.$('#parentIframe').html(cname);
        parent.$('#iframe').attr("src",chref).ready();;
        parent.$('#parentIframe').css("display","inline-block");
        parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
       
        parent.layer.close(index);

    });
    $(document).ready(function(){
        $(".t_Record").width($(window).width()-30);
        //当文档窗口发生改变时 触发
        $(window).resize(function(){
            $(".t_Record").width($(window).width()-30);
        });
    });

    function  showModal() {
        $("#showAccount").modal("show");
    }
</script>