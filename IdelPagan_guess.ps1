$number = Get-Random -Minimum 1 -Maximum 101;
$tries = 0;
$rightInput = 0

  do{

       $userNumber = Read-Host "Please guess the number between 1 and 100";
       "You guessed: " + $userNumber;


        if ([int]$userNumber -gt 100){

            write-host "Sorry"  $userNumber  "is not in range of the guess game, please try a number lower than 100" -foregroundcolor red

        } elseif ([int]$userNumber -lt 1) {

            write-host "Sorry" $userNumber  "is not in range of the guess game, please try a number higher than 0" -foregroundcolor red
        } elseif ([int]$userNumber -lt $number){

            "You guessed too low, try again.";
            $tries++;

        } elseif ([int]$userNumber -gt $number){

            "You guessed too high, try again.";
            $tries++;

        } elseif ([int]$userNumber -eq $number){

            "You are correct, you win!";
            "You guessed correctly " + $tries + " time(s)!";
            $rightInput = 1;

        }

   }while($rightInput -eq 0);