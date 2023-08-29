<#import "parts/common.ftlh" as c>

<@c.page>
<style>
    .block{

            background: url('static/IMG_5090.jpg') 0 0 no-repeat local;
            background: rgb(236,232,157);
            background: -moz-linear-gradient(top, rgba(236,232,157,1) 0%, rgba(94,83,115,1) 50%, rgba(24,181,164,1) 100%);
            background: -webkit-linear-gradient(top, rgba(236,232,157,1) 0%,rgba(94,83,115,1) 50%,rgba(24,181,164,1) 100%);
            background: linear-gradient(to bottom, rgba(236,232,157,1) 0%,rgba(94,83,115,1) 50%,rgba(24,181,164,1) 100%);
            height: 300px;
            border-radius: 15px;
            box-shadow: aqua;
</style>
<div class="block">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">


    <form action="/login" method="post">
        <div>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <#--            <button type="submit">Login</button>-->
            <button type="submit" class="btn btn-primary">Login</button>
        </div>
        <table>
         <tr>  <img src="static/IMG_5090.jpg" class="background" style="margin-top: 300px;"/> </tr>


        </table>
    </form>


</div>


</@c.page>

