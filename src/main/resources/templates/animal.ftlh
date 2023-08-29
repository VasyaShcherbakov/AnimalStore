<#import "parts/common.ftlh" as c>

<@c.page>

    ${animal}

    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="post" action="/edit/${id}" class="form-inline">
                <input type="text" name="name" class="form-control" placeholder="animal name">
                <input type="number" name="age" class="form-control" placeholder="age of animal">

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-primary ml-2">Edit new Animal</button>
            </form>
        </div>
    </div>

</@c.page>