<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD BUCKET LIST</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap');
        * {
            font-family: 'Hi Melody', cursive;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/bucket.css">
    <div class="bg center">
        <form name="newBucket" action="processAddBucket.jsp" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2">BUCKET ID</label>
                <div class="col-sm-3">
                    <input type="text" id="bucketId" name="bucketId" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">BUCKET</label>
                <div class="col-sm-3">
                    <textarea name="bucket" placeholder="버킷리스트를 입력하세요(50자 이내)" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-primary" value="commit">
                </div>
            </div>
        </form>
    </div>
</body>
</html>
