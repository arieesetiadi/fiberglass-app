<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mail Template</title>
</head>

<body>
    <p>Dear Administrator {{ $admin->name }}</p>
    <p>{{ $request->message }}</p>
    <p>Salam hangat,</p>
    <p>{{ $request->name }}</p>
</body>

</html>
