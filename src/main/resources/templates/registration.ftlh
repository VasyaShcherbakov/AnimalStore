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

    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="post" action="/registration" class="form-inline">
                <input type="text" name="username" class="form-control" placeholder="username">
                <input type="password" name="password" class="form-control" placeholder="user password">
                <input type="email" name="email" class="form-control" placeholder="email">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-primary ml-2">Save</button>
            </form>
        </div>
    </div>
    <img src="static/1.jpg" class="background" style="margin-top: 300px;"/>
    <img src="static/1-fransis009.jpg" class="background" style="margin-top: 300px;"/>

    </div>



</@c.page>



