<#include "security.ftlh">
<style>
    .nav-item nav-link {
        background-color: aquamarine;
    }


</style>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">



<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Navbar</a>
    <button class="navbar-toggler" type="button" class="btn btn-warning"  data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="/">Home <span class="sr-only">(current)</span></a>
            <#if known>
                <a class="nav-item nav-link" href="/animal">Animals</a>
                <a class="nav-item nav-link" href="/animal-page">Pages</a>
                <a class="nav-item nav-link" href="/logout">logout</a>
                <a class="nav-item nav-link" href="/add-user-from-admin">Admin-panel</a>
                <a class="nav-item nav-link" href="/user/profile">${name}</a>
            <#else>
                <a class="nav-item nav-link" href="/registration">registration</a>
                <a class="nav-item nav-link" href="/login">login</a>
            </#if>
        </div>
    </div>
</nav>