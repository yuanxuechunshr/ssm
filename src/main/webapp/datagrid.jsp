<%@page pageEncoding="UTF-8" isELIgnored="false"  %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/black/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/form.validator.rules.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            $("#dg").datagrid({
                url:"/user.json",
                remoteSort:false,//关闭服务器的排序
                fitColumns:true,
                height:300,
                resizeHandle:'left',
                toolbar:"#tb",
                striped:true,//斑马线效果
                loadMsg:'正在加载数据，请耐心等待....',
                pagination:true,
                rownumbers:true,//显示行号
                checkOnSelect:false,
                //pagePosition:'both', 定义分页页面的位置
                pageNumber:1,//初始页码
                pageSize:2,//每页显示的记录数
                pageList:[2,4,6,8,10],//下拉列表的值


                columns:[[
                    {title:"Fuxuan",field:"Fuxuan",checkbox:true,},
                    {title:"Id",field:"id",width:100,sortable:true,fixed:true,hidden:false,
                        styler:function(value,row,index){
                            return "background:#f60";
                        }
                    },
                    {title:"Username",field:"username",width:100,sortable:true,},
                    {title:"Name",field:"name",width:100,sortable:true,
                       /* formatter:function (value,row,index) {
                            /!*console.log(value);
                            console.log(row.id);
                            console.log(index);*!/
                            if(value>=50){
                                return  "<font color='red'>老人</font>";
                            }
                            return "<font color='blue'>还年轻</font>";

                        }*/
                    },
                    {title:"Password",field:"password",width:100,sortable:true,},
                    {title:"Sex",field:"sex",width:100,sortable:true,resizable:false,},
                    {title:"options",field:"options",width:200,
                        formatter:function(value,row,index){
                          //  console.log(row.id);
                            return  "<a href=''  class='del'>删除</a>&nbsp;&nbsp;<a href='' class='edit'>修改</ahref>";
                        }
                    }
                ]]
            });
            
        })

    </script>
    <title>Document</title>
</head>
<body>
    <table id="dg"></table>
    <div id="tb">
        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"></a>
        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-help',plain:true"></a>
    </div>

</body>
</html>