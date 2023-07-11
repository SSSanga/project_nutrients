<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <title>Insert Form</title>
</head>
<body>
    <h2>Insert Form</h2>

    <form action="/main/insert" method="post">
        <div>
            <label for="commonCodeId">Common Code ID:</label>
            <input type="text" id="commonCodeId" name="commonCodeId">
        </div>
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <div>
            <label for="orderNumber">Order Number:</label>
            <input type="number" id="orderNumber" name="orderNumber">
        </div>
        <div>
            <label for="attribution1">Attribution 1:</label>
            <input type="text" id="attribution1" name="attribution1">
        </div>
        <div>
            <label for="attribution2">Attribution 2:</label>
            <input type="text" id="attribution2" name="attribution2">
        </div>
        <div>
            <label for="description">Description:</label>
            <input type="text" id="description" name="description">
        </div>
        <div>
            <label for="systemCodeYn">System Code YN:</label>
            <input type="text" id="systemCodeYn" name="systemCodeYn">
        </div>
        <div>
            <label for="useYn">Use YN:</label>
            <input type="text" id="useYn" name="useYn">
        </div>
        <div>
            <label for="parentCommonCodeId">Parent Common Code ID:</label>
            <input type="text" id="parentCommonCodeId" name="parentCommonCodeId">
        </div>
        <div>
            <label for="registerSeq">Register Seq:</label>
            <input type="text" id="registerSeq" name="registerSeq">
        </div>
        <div>
            <label for="registryDate">Registry Date:</label>
            <input type="text" id="registryDate" name="registryDate">
        </div>
        <div>
            <label for="modifierSeq">Modifier Seq:</label>
            <input type="text" id="modifierSeq" name="modifierSeq">
        </div>
        <div>
            <label for="modifyDate">Modify Date:</label>
            <input type="text" id="modifyDate" name="modifyDate">
        </div>
        <div>
            <input type="submit" value="Submit">
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>