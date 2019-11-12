# List numbers 1 to 100
foreach ($n in 1..100) {
    Switch ($n) {
        # Scan for numbers divisable between 3 and give them $name of Fizz
        { $n % 3 -eq 0 } { $Fizz = 'Fizz' }
        # Scan for numbers divisable between 5 and give them $name of Buzz
        { $n % 5 -eq 0 } { $Buzz = 'Buzz' }
        # If neither of the above the just name as number
        default { $msg = $n }
    }
    # Scan the above output and if equal to fizz and Buzz $name is FizzBuzz
    if (("$Fizz$Buzz").Length -gt 0) { $msg = "$Fizz$Buzz" }

    # Write message to screen if Fizz, Buzz, FizzBuzz or default number
    Write-Output $msg

    #Clear $msg of all output 
    $msg = $Fizz = $Buzz = $null
}