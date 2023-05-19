package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b.SealCommand;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b.SharkCommand;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.h */
/* loaded from: classes2.dex */
public class SealSharkUpdateDeviceService {

    /* renamed from: c */
    private static SealSharkUpdateDeviceService f13616c;

    /* renamed from: a */
    private ISealSharkUpdateAckReceived f13617a;

    /* renamed from: b */
    private String f13618b;

    private SealSharkUpdateDeviceService() {
    }

    /* renamed from: a */
    public static SealSharkUpdateDeviceService m12530a() {
        if (f13616c == null) {
            f13616c = new SealSharkUpdateDeviceService();
        }
        return f13616c;
    }

    /* renamed from: b */
    public void m12529b(SealCommand sealCommand) {
        C4161y.m11043l("SealSharkUpdateDeviceService", "onSealCmdReceived");
        if (sealCommand.m12508a() == 20014 && (sealCommand.m12507b() instanceof SealProtos.SEAL_UpGradeFileResponse)) {
            SealProtos.SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse = (SealProtos.SEAL_UpGradeFileResponse) sealCommand.m12507b();
            SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR result = sEAL_UpGradeFileResponse.getResult();
            ISealSharkUpdateAckReceived iSealSharkUpdateAckReceived = this.f13617a;
            if (iSealSharkUpdateAckReceived != null) {
                if (result == SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR.SEAL_UP_RESULT_LOW_POWER) {
                    iSealSharkUpdateAckReceived.mo12543a();
                } else {
                    iSealSharkUpdateAckReceived.mo12542b(result == SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR.SEAL_UP_RESULT_OK, sEAL_UpGradeFileResponse.getOffset());
                }
            }
        }
    }

    /* renamed from: c */
    public void m12528c(SharkCommand sharkCommand) {
        C4161y.m11043l("SealSharkUpdateDeviceService", "onSharkCmdReceived");
        if (sharkCommand.m12508a() == 20014 && (sharkCommand.m12507b() instanceof SharkProtos.SHARK_UpGradeFileResponse)) {
            SharkProtos.SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse = (SharkProtos.SHARK_UpGradeFileResponse) sharkCommand.m12507b();
            SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR result = sHARK_UpGradeFileResponse.getResult();
            ISealSharkUpdateAckReceived iSealSharkUpdateAckReceived = this.f13617a;
            if (iSealSharkUpdateAckReceived != null) {
                if (result == SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR.SHARK_UP_RESULT_LOW_POWER) {
                    iSealSharkUpdateAckReceived.mo12543a();
                } else {
                    iSealSharkUpdateAckReceived.mo12542b(result == SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR.SHARK_UP_RESULT_OK, sHARK_UpGradeFileResponse.getOffset());
                }
            }
        }
    }

    /* renamed from: d */
    public void m12527d(SealCommand sealCommand) {
        BleCoreClient.m12373n().m12375l(this.f13618b).m12142C1(sealCommand);
    }

    /* renamed from: e */
    public void m12526e(SharkCommand sharkCommand) {
        BleCoreClient.m12373n().m12374m(this.f13618b).m12023q1(sharkCommand);
    }

    /* renamed from: f */
    public void m12525f(String str) {
        this.f13618b = str;
    }

    /* renamed from: g */
    public void m12524g(ISealSharkUpdateAckReceived iSealSharkUpdateAckReceived) {
        this.f13617a = iSealSharkUpdateAckReceived;
    }
}
