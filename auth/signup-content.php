
<!DOCTYPE html>
<html>

<head>
    <title>Signup</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container my-5" style="width: 400px">
        <form action="../actions/register.php" method="POST" autocomplete="off">
            <h1 class="my-3">Register here</h1>
            <div class="form-group my-4">
                <label for="name">Name</label>
                <input type="name" name="name" class="form-control" aria-describedby="emailHelp"
                    placeholder="Enter email">
            </div>
            <div class="form-group my-4">
                <label for="email">Email address</label>
                <input type="email" name="email" class="form-control"
                    aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <div class="form-group my-4">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control"
                    placeholder="Password">
            </div>
            <div class="form-check my-4">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        </>
    </div>
</body>

</html>