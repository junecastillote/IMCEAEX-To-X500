
<#PSScriptInfo

.VERSION 1.1

.GUID 910a560a-27de-4a03-bd5b-16a04d766779

.AUTHOR June Castillote

.COMPANYNAME https://lazyexchangeadmin.com

.COPYRIGHT june.castillote@gmail.com

.TAGS IMCEAEX X500 EXCHANGE EMAIL ADDRESS SCRIPT FUNCTION TOOL

.LICENSEURI https://raw.githubusercontent.com/junecastillote/IMCEAEX-To-X500/master/LICENSE?token=ADSYFWUDJ7UJKABMPMGGIF25ELERC

.PROJECTURI https://github.com/junecastillote/IMCEAEX-To-X500

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


.PRIVATEDATA 

#>

<# 

.DESCRIPTION 
 Converts IMCEAEX string to a valid X500 Address 

#> 
    [cmdletbinding()]
    param (
        [Parameter(Position=0,Mandatory)]
        [string]
        $IMCEAEX
    )
    $IMCEAEX = ($IMCEAEX).Replace("IMCEAEX-", "")
    $IMCEAEX = ($IMCEAEX).Replace("_", "/")
    $IMCEAEX = ($IMCEAEX).Replace("+20", " ")
    $IMCEAEX = ($IMCEAEX).Replace("+28", "(")
    $IMCEAEX = ($IMCEAEX).Replace("+29", ")")
    $IMCEAEX = ($IMCEAEX).Replace("+2E", ".")
    
    Write-Host ""
    Write-Host "- Converted to X500"
    "X500:$($IMCEAEX)" | clip
    Write-Host "- Copied to Clipboard"
    Write-Host ""
    Return "X500:$($IMCEAEX)"