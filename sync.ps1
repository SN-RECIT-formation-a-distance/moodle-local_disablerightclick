$from = "moodle-local_disablerightclick/*"
$to = "shared/recitfad/local/disablerightclick/"
$source = "./";

try {
    . ("..\sync\watcher.ps1")
}
catch {
    Write-Host "Error while loading sync.ps1 script." 
}