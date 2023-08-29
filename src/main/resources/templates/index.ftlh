<#include "parts/security.ftlh">
<#import "parts/common.ftlh" as c>

<@c.page>
    <style>
tbody {
    background-color: aquamarine;

}
        .block2 {
            background-image: url(../static/Fonts.jpg);
            background-size: auto;
            background-color: aquamarine;
        }


        tr {
            background-color: blue;
            height: max-content;
        }

        td {
            color: blue;
        }
        table {

            color: blue;
        }
        tbody {

            color: aqua;
        }
        .block{
            background: url('static/IMG_5090.jpg') 0 0 no-repeat local;
            background: rgb(236,232,157);
            background: -moz-linear-gradient(top, rgba(236,232,157,1) 0%, rgba(94,83,115,1) 50%, rgba(24,181,164,1) 100%);
            background: -webkit-linear-gradient(top, rgba(236,232,157,1) 0%,rgba(94,83,115,1) 50%,rgba(24,181,164,1) 100%);
            background: linear-gradient(to bottom, rgba(236,232,157,1) 0%,rgba(94,83,115,1) 50%,rgba(24,181,164,1) 100%);
            height: 300px;
            border-radius: 15px;
            box-shadow: aqua;

        }
    </style>


    <div class="block2">
<div class="block">
    <div>
        <#if known>
            Hello ${user.getEmail()}!
        <#else>

            <button type="button" class="btn btn-danger">Hello, dear Buyer!</button>
            <button type="button" class="btn btn-primary">Welcome to our store!</button>
            <button type="button" class="btn btn-info"> Here you can buy your pet</button>

        </#if>
    </div>

</div>

<head>


</head>
    <table border="2px">
        <thead>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">




        <tr>
            <th> <button type="button" class="btn btn-danger">animal id</button></th>
            <th> <button type="button" class="btn btn-primary">name</button></th>
            <th>  <button type="button" class="btn btn-info"> animalFamily</button></th>
            <th> <button type="button" class="btn btn-secondary">sale</button></th>
            <th> <button type="button" class="btn btn-success">delete</button></th>


        </tr>
        </thead>


        <tbody>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

        <button type="button" class="btn btn-secondary">Secondary</button>
        <button type="button" class="btn btn-success">Success</button>




        <button type="button" class="btn btn-dark">Dark</button>




            <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th style="color: aqua">ID</th>
                <th>Name</th>
                <th>Animal_Famaly</th>
                <th>Status</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <#list animals as animal>
                <tr>
                    <td><a href="/animals/${animal.getId()}">${animal.getId()}</a></td>
                    <td>${animal.getName()}</td>
                    <td>${animal.getAnimalFamily()}</td>
                    <td><#if animal.getSale()>SALE<#else>NOT SALE</#if></td>
                    <td><a href="/animals/delete/${animal.getId()}" class="btn btn-danger">DELETE</a></td>
                </tr>
            </#list>
            </tbody>
        </table>

        </tbody>
    </table>
    <div>


</@c.page>