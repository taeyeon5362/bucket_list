<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>BUCKET LIST</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=PT+Sans&display=swap');
        * {
            font-family: 'PT Sans', cursive;
        }

        .title {
            color: white;
            background-color: mediumpurple;
            font-size: 30px;
            padding: 4px 14px;
            border-radius: 8px;
        }

        .bg {
            width: 360px;
            background-image: url("https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/bucketList/bg-grid.png");

        }

        .bucket {
            width: 160px;
            height: 160px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/bucket.css">

    <div class="bg center">
        <h1 class="title">2023 BUCKET LIST</h1>
        <div class="row flex-row wrap">
            <%@ include file="dbconn.jsp" %>
            <%
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                String sql = "select * from bucket";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                int i = 0;
                while (rs.next()) {
                    if (i == 2) {
                        i = 0;
                    }
                    i++;
            %>
            <div class="bucket img<%=i%> center"><%=rs.getString("b_bucket")%></div>
            <%
                }
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if(conn != null)
                    conn.close();
            %>
        </div>
    </div>

</body>
</html>