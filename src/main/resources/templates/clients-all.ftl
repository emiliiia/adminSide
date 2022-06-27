<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Курсова робота</title>
    <link rel="stylesheet" type="text/css" href="<@spring.url '/css/clients-all.css'/>"/>
</head>
<body>
<div id="header">
    <div class="menu">
        <div>
            <div class="child">
                <hr id = "hr_logo">
            </div>

            <div class="child">
                <a href="#" class="logo" >
                    Міністерство освіти і науки України<br>
                    Чернівецький національний університет ім. Юрія Федьковича<br>
                    Кафедра інформаційних технологій та комп’ютерної фізики
                </a>
            </div>
        </div>

        <div class="about_panelooooo">
            <img id="c" src="<@spring.url '/css/img_logo.png'/>" alt="ЧНУ">
        </div>

    </div>
</div>
<br>

<div id="about">
    <div class="center">
    <h1 style="text-align: center; border-left: 2px solid #242323;">Clients</h1>
    <div>
        <table class="table">
            <thead>
            <tr id="bubu" >
                <th style="height: 30px">Id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Phone number</th>
                <th>Name</th>
                <th>Middle Name</th>
                <th>Surname</th>
                <th>Passport data</th>
                <th>Discount</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            </thead>
            <#list clients as client>
                <tbody>
                <tr id="ququ">
                    <td style="border-radius: 50px; background: rgba(197, 164, 111, 1); color: rgb(0,0,0); font-weight: bold;">${client.id}</td>
                    <td>${client.name}</td>
                    <td>${client.description}</td>
                    <td>${client.clientNum}</td>
                    <td>${client.clientName}</td>
                    <td>${client.clientMiddleName}</td>
                    <td>${client.clientSurname}</td>
                    <td>${client.clientPassportData}</td>
                    <td>${client.discounts!"--"}</td>
                    <td style="background: #363434">
                        <form action="http://localhost:8082/ui/v1/clients/delete/${client.id}">
                        <button>Delete</button>
                        </form>
                    </td>
                    <td style="background: #363434">
                        <form action="http://localhost:8082/ui/v1/clients/updateForm/${client.id}">
                        <button>Update</button>
                        </form>
                    </td>
                </tr>
            </#list>
                </tbody>
        </table>
        <div id="ruru">
            <form action="http://localhost:8082/ui/v1/clients/createForm">
                <button type="submit">+Create</button>
            </form>
        </div>
        <div id="ruru">
            <form action="http://localhost:8082/ui/v1/clients/">
                <p id="chern"><button>Next ➜</button></p>
            </form>
        </div>
    </div>
    </div>
</div>


<div id="footer">
    <div class="footer_container">
        <p id = "foot_text">
            Kotsyubynskoho Street, 2.<br>
            Chernivtsi, 58012  |  1-800-000-0000<br>
        </p>
        <p id = "foot_text2">
            © 2022 by Drahomyretska Emiliia. Design proudly created with figma.com
        </p>
    </div>
</div>

</body>
</html>