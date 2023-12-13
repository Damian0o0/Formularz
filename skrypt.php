<?php
        $connect = mysqli_connect("localhost", "root", "", "formularz");

            if(isset($_POST['przeslij'])){
                
                $imie = $_POST['imie'];

                $nazwisko = $_POST['nazwisko'];

                $dataurodzenia = $_POST['dataurodzenia'];

                $email = $_POST['email'];

                $telefon = $_POST['telefon'];
                
                $wojewodztwo = $_POST['wojewodztwo'];

                $plec = $_POST['wybor'];

                $zgoda = isset($_POST['zgoda']) ? 'Tak' : 'Nie';


                $zapytanie1 = mysqli_query($connect, "INSERT INTO formularz(`imie`, `nazwisko`, `data_urodzenia`, `adres_email`, `telefon`, `wojewodztwo`, `płeć`, `zgoda_na_newsletter`) VALUES ('$imie','$nazwisko','$dataurodzenia','$email','$telefon','$wojewodztwo','" . mysqli_real_escape_string($connect, $plec) . "','$zgoda')");


                if(mysqli_query($connect, $zapytanie1)){
                    echo "Formularz został przesłany";
                }else{
                    echo "Błąd przesyłania: " . mysqli_error($connect);
                }
            };   

        mysqli_close($connect);
?>
