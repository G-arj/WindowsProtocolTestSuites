# Copyright (c) Microsoft. All rights reserved.
# Licensed under the MIT license. See LICENSE file in the project root for full license information.

# This script is used to trigger client to initiate a RDP connection from RDP client, 
# and the client should use Negotiation-Based Approach to advertise the support for TLS, 
# CredSSP or RDP standard security protocol.

# Run task to start RDP connection remotely
$returnValue = ./Run-TaskWithPSRemoting.ps1 $PtfProp_SUTName $PtfProp_RDPConnectWithNegotiationApproachFullScreen_Task $PtfProp_SUTUserName
return $returnValue
