﻿# Copyright (c) Microsoft. All rights reserved.
# Licensed under the MIT license. See LICENSE file in the project root for full license information.

[string]$LocalRealmRemoteUserName = $PtfProp_LocalRealm_RealmName + '\' + $PtfProp_LocalRealm_Users_Admin_Username
[string]$TrustedRealmRemoteUserName = $PtfProp_TrustedRealm_RealmName + '\' + $PtfProp_TrustedRealm_Users_Admin_Username

.\Run-TaskOnRemoteComputer $PtfProp_LocalRealm_FileServer01_FQDN $PtfProp_EnableCompoundIdentity_Task $LocalRealmRemoteUserName $PtfProp_LocalRealm_Users_Admin_Password

.\Run-TaskOnRemoteComputer $PtfProp_TrustedRealm_FileServer01_FQDN $PtfProp_EnableCompoundIdentity_Task $TrustedRealmRemoteUserName $PtfProp_TrustedRealm_Users_Admin_Password

