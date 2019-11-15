package com.ifengyu.intercom.update.dolphin;

import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE;

/* compiled from: IDolphinUpdateAckReceived */
public interface f {
    void a(STATECODE statecode, int i);

    void a(UPDATESTATECODE updatestatecode, boolean z, int i);
}
