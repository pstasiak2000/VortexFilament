function banner_print()
    hostname = gethostname() #Get the hostname
    username = ENV["USER"]   #Get the username
    date = now()             #Get the current date and time

    printstyled("                                             \n",bold=:true,color=:blue)
    printstyled("        _   _     __     __         _        \n",bold=:true,color=:blue)
    printstyled("       | \\ | |_   \\ \\   / /__  _ __| |_   \n",bold=:true,color=:blue)
    printstyled("       |  \\| | | | \\ \\ / / _ \\| '__| __| \n",bold=:true,color=:blue)
    printstyled("       | |\\  | |_| |\\ V / (_) | |  | |_    \n",bold=:true,color=:blue)
    printstyled("       |_| \\_|\\__,_| \\_/ \\___/|_|   \\__|\n",bold=:true,color=:blue)
    printstyled("                                             \n",bold=:true,color=:blue)
    printstyled("                                             \n",bold=:true,color=:blue)
    
    println("user info:  $(username)@$(hostname)")
    println("Launched on $(Dates.day(date))/$(Dates.month(date))/$(Dates.year(date)) @ $(Dates.Time(date))")
    println("---------------------------------------------")
end