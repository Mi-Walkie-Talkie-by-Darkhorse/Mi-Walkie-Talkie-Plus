package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import com.google.protobuf.Message;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.MitalkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.i */
/* loaded from: classes2.dex */
public class DolphinUpdateDeviceService {

    /* renamed from: c */
    private static DolphinUpdateDeviceService f13009c;

    /* renamed from: a */
    private IDolphinUpdateAckReceived f13010a;

    /* renamed from: b */
    private String f13011b;

    private DolphinUpdateDeviceService() {
    }

    /* renamed from: a */
    public static DolphinUpdateDeviceService m13148a() {
        if (f13009c == null) {
            f13009c = new DolphinUpdateDeviceService();
        }
        return f13009c;
    }

    /* renamed from: b */
    public void m13147b(MitalkProtos.Command command) {
        C4161y.m11043l("UpdateDeviceService", "onDolphinUpdateCmdReceived");
        if (command.hasFileResp()) {
            C4161y.m11054a("UpdateDeviceService", "received a FileResp");
            if (this.f13010a != null) {
                MitalkProtos.FileResponse fileResp = command.getFileResp();
                this.f13010a.mo13085a(fileResp.getResult(), fileResp.getAckSeq());
            }
        }
        if (command.hasUpdateResponse()) {
            C4161y.m11054a("UpdateDeviceService", "received a updateResponse.");
            if (this.f13010a != null) {
                MitalkProtos.UpdateResponse updateResponse = command.getUpdateResponse();
                this.f13010a.mo13084b(updateResponse.getState(), updateResponse.getResult(), updateResponse.getAck());
            }
        }
    }

    /* renamed from: c */
    public void m13146c(Message message) {
        BleCoreClient.m12373n().m12378i(this.f13011b).m12305v1(message);
    }

    /* renamed from: d */
    public void m13145d(byte[] bArr) {
        BleCoreClient.m12373n().m12378i(this.f13011b).m12303w1(bArr);
    }

    /* renamed from: e */
    public void m13144e(IDolphinUpdateAckReceived iDolphinUpdateAckReceived) {
        this.f13010a = iDolphinUpdateAckReceived;
    }

    /* renamed from: f */
    public void m13143f(String str) {
        this.f13011b = str;
    }
}
