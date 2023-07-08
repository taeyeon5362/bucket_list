<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dto.Bucket"%>
<%@ page import="dao.bucketRepository"%>
<%@ page import = "java.sql.*" %>
<%@ include file="dbconn.jsp"%>
<html>
<head>
    <title>ADD BUCKET</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");

        String bucketId = request.getParameter("bucketId");
        String bucket = request.getParameter("bucket");

        PreparedStatement pstmt = null;
        String sql = "insert into bucket values(?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,bucketId);
        pstmt.setString(2,bucket);
        pstmt.executeUpdate();

        if(pstmt != null)
            pstmt.close();
        if(conn != null)
            conn.close();

        bucketRepository dao = bucketRepository.getInstance();

        Bucket newBucket = new Bucket();
        newBucket.setBucketId(bucketId);
        newBucket.setBucket(bucket);

        dao.addBucket(newBucket);

        response.sendRedirect("bucket.jsp");
    %>
</body>
</html>
