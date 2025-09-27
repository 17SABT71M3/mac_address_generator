# Define the allowed first bytes (Locally Administered, Unicast)
$UnicastSet = @(
    "02","06","0A","0E",
    "22","26","2A","2E",
    "42","46","4A","4E",
    "62","66","6A","6E",
    "82","86","8A","8E"
)

# Pick one randomly
$macFirst = Get-Random -InputObject $UnicastSet

# Generate the remaining 5 bytes randomly
$restOfMac = ForEach ($i in 1..5) {
    ":{0:x2}" -f (Get-Random -Minimum 0 -Maximum 256)
}

# Combine all parts into final MAC address
$totalMac = $macFirst + ($restOfMac -join "")

Write-Output $totalMac
