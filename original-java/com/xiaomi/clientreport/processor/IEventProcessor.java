package com.xiaomi.clientreport.processor;

import com.xiaomi.clientreport.data.a;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public interface IEventProcessor extends c, d {
    String bytesToString(byte[] bArr);

    void setEventMap(HashMap<String, ArrayList<a>> hashMap);

    byte[] stringToBytes(String str);
}
