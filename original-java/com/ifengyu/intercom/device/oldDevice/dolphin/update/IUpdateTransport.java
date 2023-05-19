package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import com.ifengyu.intercom.protos.MitalkProtos;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.o */
/* loaded from: classes2.dex */
public interface IUpdateTransport {
    /* renamed from: a */
    boolean mo13071a();

    /* renamed from: b */
    boolean mo13070b();

    /* renamed from: c */
    int mo13083c(int i);

    /* renamed from: d */
    boolean mo13069d();

    /* renamed from: e */
    boolean mo13082e();

    /* renamed from: f */
    boolean mo13068f();

    /* renamed from: g */
    int mo13081g();

    /* renamed from: h */
    void mo13080h(int i);

    boolean hasNext();

    /* renamed from: i */
    void mo13079i(String str, int i, MitalkProtos.FILETYPE filetype);

    /* renamed from: j */
    void mo13078j(int i);

    /* renamed from: k */
    boolean mo13077k();

    /* renamed from: l */
    int mo13076l();

    void release();
}
