package com.xiaomi.clientreport.processor;

import com.xiaomi.clientreport.data.C5878a;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public interface IEventProcessor extends InterfaceC5891c, InterfaceC5892d {
    String bytesToString(byte[] bArr);

    void setEventMap(HashMap<String, ArrayList<C5878a>> hashMap);

    byte[] stringToBytes(String str);
}
