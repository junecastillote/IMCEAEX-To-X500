
Function Convert-IMCEAEXToX500 {
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
    Return $IMCEAEX
}