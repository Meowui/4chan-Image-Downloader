function uno{
for($counter = 0; $counter -le 75; $counter++){
$niggerArray = @('boards.4chan.org/b/', 'boards.4channel.org/a/','boards.4channel.org/c/','boards.4channel.org/w/','boards.4channel.org/m/','boards.4channel.org/cgl/','boards.4channel.org/cm/','boards.4chan.org/f/','boards.4channel.org/n/','boards.4channel.org/jp/','boards.4channel.org/vt/','boards.4channel.org/v/','boards.4channel.org/vg/','boards.4channel.org/vm/','boards.4channel.org/vmg/','boards.4channel.org/vp/','boards.4channel.org/vr/','boards.4channel.org/vrpg/','boards.4channel.org/vst/','boards.4channel.org/co/','boards.4channel.org/g/','boards.4channel.org/tv/','boards.4channel.org/k/','boards.4channel.org/o/','boards.4channel.org/an/','boards.4channel.org/tg/','boards.4channel.org/sp/','boards.4channel.org/xs/','boards.4channel.org/pw/','boards.4channel.org/sci/','boards.4channel.org/his/','boards.4channel.org/int/','boards.4channel.org/out/','boards.4channel.org/toy/','boards.4chan.org/i/','boards.4channel.org/po/','boards.4channel.org/p/','boards.4channel.org/ck/','boards.4chan.org/ic/','boards.4chan.org/wg/','boards.4channel.org/lit/','boards.4channel.org/mu/','boards.4channel.org/fa/','boards.4channel.org/3/','boards.4channel.org/gd/','boards.4channel.org/diy/','boards.4channel.org/wsg/','boards.4channel.org/qst/','boards.4channel.org/biz/','boards.4channel.org/trv/','boards.4channel.org/fit/','boards.4channel.org/x/','boards.4channel.org/adv/','boards.4channel.org/lgbt/','boards.4channel.org/mlp/','boards.4channel.org/news/','boards.4channel.org/wsr/','boards.4channel.org/vip/','boards.4chan.org/b/','boards.4chan.org/r9k/','boards.4chan.org/pol/','boards.4chan.org/bant/','boards.4chan.org/soc/','boards.4chan.org/s4s/','boards.4chan.org/s/','boards.4chan.org/hc/','boards.4chan.org/hm/','boards.4chan.org/h/','boards.4chan.org/e/','boards.4chan.org/u/','boards.4chan.org/d/','boards.4chan.org/y/','boards.4chan.org/t/','boards.4chan.org/hr/','boards.4chan.org/gif/','boards.4chan.org/aco/','boards.4chan.org/r/')
$faghot = @('b/', 'a/','c/','w/','m/','cgl/','cm/','f/','n/','jp/','vt/','v/','vg/','vm/','vmg/','vp/','vr/','vrpg/','vst/','co/','g/','tv/','k/','o/','an/','tg/','sp/','xs/','pw/','sci/','his/','int/','out/','toy/','i/','po/','p/','ck/','ic/','wg/','lit/','mu/','fa/','3/','gd/','diy/','wsg/','qst/','biz/','trv/','fit/','x/','adv/','lgbt/','mlp/','news/','wsr/','vip/','b/','r9k/','pol/','bant/','soc/','s4s/','s/','hc/','hm/','h/','e/','u/','d/','y/','t/','hr/','gif/','aco/','r/')
$4chan = Invoke-WebRequest -Uri $niggerArray[$counter] -UseBasicParsing

#more fluid now, more concise
@($4chan.Links.href).ForEach({
$fucku 
if($_ -Match "thread" -and $_ -notmatch "#" -and $_ -notmatch '-' -and $_ -notcontains $fucku){
Write-Host $_
$inside = Invoke-WebRequest -UseBasicParsing -Uri ($niggerArray[$counter] + $_)
@($inside.Images.src).ForEach({
$insideinside = $_ -replace "s",""|Split-Path -Leaf
Clear-Host( Invoke-WebRequest  -UseBasicParsing -Uri ('https://i.4cdn.org/' + $faghot[$counter]  + $insideinside) -OutFile ("C:\\Users\Public\Pictures\Image Scraper\" + $insideinside))
})
$fucku = $_
}

})
}
}

function di{
$board = Read-Host -Prompt "Give board, faggot(no slashes, just letter)"
$4chan = Invoke-WebRequest -Uri ('boards.4chan.org/' + $board + '/')

#more fluid now, more concise
@($4chan.Links.href).ForEach({
#for security purposes after getting compiled need a way to abort process. every time the foreach loop goes through the code, app detects if shift keys are pressed. also, removed write-host in the actual codes since we only use write-host to during development to check if app prints out correct things to make sure if app is functioning the way I wanted it to. 

if($_ -Match "thread" -and $_ -notmatch "#"){
$inside = Invoke-WebRequest -Uri ("boards.4chan.org/"+ $board +"/" + $_)
@($inside.Images.src).ForEach({
$insideinside = $_ -replace "s",""|Split-Path -Leaf
Clear-Host(Invoke-WebRequest -Uri ('i.4cdn.org/b/' + $insideinside) -OutFile ("C:\Users\Public\Pictures\Image Scraper\" + $insideinside))
})
}
})
}

function tri{
$threadLink = Read-Host -Prompt "Type in thread link(entire link, nigglet)"
$4chan = Invoke-WebRequest -Uri $threadLink

#more fluid now, more concise
@($4chan.Links.href).ForEach({

if($_ -Match "i.4cdn.org" -and $_ -notmatch "#"){

$temp = $_ -replace "//","https://"
$number = $_ -replace "s",""|Split-Path -Leaf
$inside = Invoke-WebRequest -Uri ($temp)

Clear-Host(Invoke-WebRequest -Uri $temp -OutFile ("C:\Users\Public\Pictures\Image Scraper\" + $number))

}

})
}


$input = Read-Host -Prompt "1: Download ALL images from 4chan `n`n2: Download ALL images from a specified board `n`n3: Download ALL images from a specified thread `n`nSelection"
$oncenot = Read-Host -prompt "Are you running this program for the first time?[Y/N]"

if($oncenot -eq 'Y'){
New-Item -Path 'C:\Users\Public\Pictures\Image Scraper\' -ItemType 'Directory'
}


if($input -match 1){
uno
}
elseif($input -match 2){
di
}
elseif($input -match 3){
tri
}
