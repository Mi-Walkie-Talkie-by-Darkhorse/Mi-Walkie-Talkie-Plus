package com.mi.mimsgsdk.net;

import android.support.annotation.NonNull;
import com.mi.mimsgsdk.utils.MnsCommand;

public class QueryMediaIdRequest extends BaseRequest {
    /* access modifiers changed from: protected */
    @NonNull
    public String getCmd() {
        return MnsCommand.OPENSDK_SIGNAL_CHANNEL_CHECK;
    }

    public QueryMediaIdRequest(@NonNull String str, long j, @NonNull String str2) {
        this.mRequest = com.mi.mimsgsdk.proto.SDKSignal.QueryMediaIdRequest.newBuilder().setAppid(Integer.valueOf(str).intValue()).setConferenceId(j).setFromGuid(str2).build();
    }
}
