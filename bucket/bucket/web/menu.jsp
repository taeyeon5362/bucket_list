<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    nav a{
        line-height: 50px;
        height: 50px;
    }
    nav li a{
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
    }
    nav li:last-child a{
        border-right: 0;
    }
    nav a:hover, nav a:active{
    }
    nav a#pull{
        display: none;
    }
    html {
        -webkit-touch-callout:none;
        -webkit-user-select:none;
        -webkit-tap-highlight-color:rgba(0, 0, 0, 0);
    }

    ul{
        /*list-style-type: none;*/
        margin: 0;
        padding: 0;
        text-align: center;
    }
    li{
        /*position: relative;*/
        display: inline-block;
    }
    li a{
        color: #FFFFFF;
        text-align: center;
        padding: 14.5px 16px;
        text-decoration: none;
    }
    li a:hover{
        /*color: #597812;*/
        color: #FFD400;
        font-weight:normal;
    }
</style>
<head>
    <title>Title</title>
</head>
<body>
    <nav class="clearfix">
        <ul class="clearfix">
            <li><a href="bucket.jsp" class="nav-link" style="color: #755139">BUCKET</a></li>
            <li><a href="addBucket.jsp" class="nav-link" style="color: #755139">ADD BUCKET</a></li>
        </ul>
    </nav>
</body>
</html>
