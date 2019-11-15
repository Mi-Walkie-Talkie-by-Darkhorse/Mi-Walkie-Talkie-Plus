package com.mi.mimsgsdk.net;

import com.mi.mimsgsdk.utils.MnsCommand.Scribe;

public class AgoraLogRequest extends BaseRequest {
    /* access modifiers changed from: protected */
    public String getCmd() {
        return Scribe.AGORA_LOG;
    }

    public AgoraLogRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
    }
}
