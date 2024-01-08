<?php
header("LOCATION:contacts.html");
require("config.php");
require("session.php");

if (isset($_POST['submit'])) {
    $fullname = mysqli_real_escape_string($con, $_POST['name']);
    $phone = mysqli_real_escape_string($con, $_POST['tel']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $message = mysqli_real_escape_string($con, $_POST['message']);
    
    $sql = "insert into message (name, telephone, email, message)
            values ('$fullname', '$phone', '$email', '$message')";
    
            if ($con->query($sql) === TRUE){
                echo "New record created successfully";
            } 
            else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }

$con->close();

}
?>

<!-- <!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <title>Молока долина | Контакты</title>
</head>
<body>

    <div class="header">
        <div class="container">
            <div class="row">

                <div class=" col-lg-3 col-sm-3">
                    <a href="../../index.html"><img src="../images/logo_horizontal_on-blue.png" alt="Долина молока" width="100%"></a>
                </div>
                
                <div class="col-lg-6 offset-lg-3 col-sm-7 offset-sm-2 ">
                    <div class="nav">
                        <a class="nav_link" href="./information.html">О нас</a>
                        <a class="nav_link" href="./production.html">Продукция</a>
                        <a class="nav_link" href="./factory.html">Завод</a>
                        <a class="nav_link" href="./contacts.html">Контакты</a>
                        <a class="nav_link_t" href="./map.html">
                            <img src="../images/map__3.png" alt="" title="Карта сайта" width="50vw">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4 offset-sm-4">
                <img src="../images/logo_horizontal_on-white__1.png" alt="" width="100%">
            </div>
        </div>
        
        <div class="row">
            <div class="col-5">
                <div class="text">
                    <p><h2>Контакты:</h2></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 col-md-12">
                <div class="text">

                    <div class="text_p">
                        <h5>Коммерческий отдел</h5>
                        <p><a class = "nav_tel_link" href="tel: +79104108877">+7 910 410 88 77</a> (WhatsApp, Telegram)</p>
                        <p>Приём заявок с 9:00 до 19:00</p>
                    </div>

                    <div class="text_p">
                        <h5>Адрес</h5>
                        <p>Солнечногорск, Красная улица, д. 186</p>
                    </div>

                    <div class="text_p">
                        <h5>Реквизиты компании</h5>
                        <p>
                            ИНН: 111111 <br>
                            Банк: Сбербанк
                        </p>
                    </div>

                </div>
            </div>

            <div class="col-lg-5 offset-lg-1 col-md-8 offset-md-2">
                <div class="text">
                    <div class="text_p">
                        <h5>Обратная связь</h5>
                    </div>
                </div>

                <div class="form">
                    <?php echo $success; ?>
                    <?php echo $error; ?>
                    <form action="" method="post" width="70%">
                        <input type="text" name="name" class="form_control input-lg" placeholder="ФИО" style="width: 100%;">
                        <input type="tel" name="tel" class="form_control input-lg" placeholder="Телефон" style="width: 100%;">
                        <input type="email" name="email" class="form_control input-lg" placeholder="e-mail*" style="width: 100%;" required>
                        <input type="text" name="message" class="form_control input-lg" placeholder="Ваше сообщение*" style="width: 100%;" required>
                        <button name="submit" type="submit" class="btn btn-primary form_btn">Отправить сообщение</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html> -->
