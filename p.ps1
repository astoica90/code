$payload = "afasfa"
[string]$output = ""
$payload.ToCharArray() | %{
 [string]$thischar = [byte][char]$_ + 26
 if($thischar.Length -eq 1)
 {
 $thischar = [string]"00" + $thischar
 $output += $thischar
 }
 elseif($thischar.Length -eq 2)
 {
 $thischar = [string]"0" + $thischar
 $output += $thischar
 }
 elseif($thischar.Length -eq 3)
 {
 $output += $thischar
 }
}
$output | clip
