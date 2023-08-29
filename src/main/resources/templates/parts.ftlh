<#import "parts/common.ftlh" as c>

<@c.page>

    <h1>Animals List</h1>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Animal Family</th>
        </tr>
        </thead>
        <tbody>
        <#list animalPage as animal>
            <tr>
                <td>${animal.getId()}</td>
                <td>${animal.getName()}</td>
            </tr>
        </#list>
        </tbody>
    </table>

    <div>
        <#if currentPage?number gt 0>
            <a href="/animal-page?page=${currentPage - 1}">Previous</a>
        </#if>

        Page ${currentPage + 1} of ${totalPages}

        <#if currentPage < totalPages - 1>
            <a href="/animal-page?page=${currentPage + 1}">Next</a>
        </#if>
    </div>

</@c.page>