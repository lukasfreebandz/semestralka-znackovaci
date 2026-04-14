param([string]$BasePath = (Split-Path -Parent $PSScriptRoot))
$ErrorActionPreference = "Stop"
function Invoke-XsltFile {
  param([string]$XsltPath,[string]$XmlPath,[string]$OutputPath,[hashtable]$Parameters=@{})
  $transform = New-Object System.Xml.Xsl.XslCompiledTransform
  $transform.Load($XsltPath)
  $args = New-Object System.Xml.Xsl.XsltArgumentList
  foreach ($key in $Parameters.Keys) { $args.AddParam($key, '', [string]$Parameters[$key]) }
  $writer = [System.IO.StreamWriter]::new($OutputPath, $false, [System.Text.UTF8Encoding]::new($false))
  $transform.Transform($XmlPath, $args, $writer)
  $writer.Dispose()
}
$xml = Join-Path $BasePath 'data\festival.xml'
$transformDir = Join-Path $BasePath 'API\transformation'
$jsonDir = Join-Path $BasePath 'API\json'
Invoke-XsltFile (Join-Path $transformDir 'festival.xslt') $xml (Join-Path $jsonDir 'festival.json')
Invoke-XsltFile (Join-Path $transformDir 'venues.xslt') $xml (Join-Path $jsonDir 'venues.json')
Invoke-XsltFile (Join-Path $transformDir 'venue-detail.xslt') $xml (Join-Path $jsonDir 'venue-v001.json') @{ id = 'V001' }
Invoke-XsltFile (Join-Path $transformDir 'performers.xslt') $xml (Join-Path $jsonDir 'performers-page-1-size-10.json') @{ page = '1'; pageSize = '10' }
Invoke-XsltFile (Join-Path $transformDir 'performer-detail.xslt') $xml (Join-Path $jsonDir 'performer-p001.json') @{ id = 'P001' }
Invoke-XsltFile (Join-Path $transformDir 'events.xslt') $xml (Join-Path $jsonDir 'events.json')
Invoke-XsltFile (Join-Path $transformDir 'event-detail.xslt') $xml (Join-Path $jsonDir 'event-e001.json') @{ id = 'E001' }

