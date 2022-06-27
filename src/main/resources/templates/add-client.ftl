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
            <h1 style="text-align: center">Add Client</h1>
            <form name="client" action="endCreateForm" method="post">
                <div class="inputbox">
                 <@spring.formInput "form.id" "" "text"/>
                    <span>Id :</span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.name" "" "text"/>
                    <span>Name : </span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.description" "" "text"/>
                    <span>Description : </span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.clientNum" "" "text"/>
                    <span>Phone number : </span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.clientName" "" "text"/>
                    <span>First Name : </span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.clientMiddleName" "" "text"/>
                    <span>Middle Name : </span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.clientSurname" "" "text"/>
                    <span>Surname : </span>
                </div>
                <div class="inputbox">
                <@spring.formInput "form.clientPassportData" "" "text"/>
                    <span>Passport data : </span>
                </div>
                <div class="inputbox">
                <form action="http://localhost:8082/ui/v1/clients/endCreateForm">
                    <p style="text-align: center"><button type="submit" style="width: 100px; height: 50px; font-size: 18px">
                            Submit</button></p>
                </form>
                </div>

            </form>
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