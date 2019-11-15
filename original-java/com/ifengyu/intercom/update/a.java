package com.ifengyu.intercom.update;

import com.google.protobuf.Message;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.ConnectionFailedReason;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.c;
import com.ifengyu.intercom.node.h;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.node.m;
import com.ifengyu.intercom.node.n;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.FileResponse;
import com.ifengyu.intercom.protos.MitalkProtos.UpdateResponse;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponse;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponse;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR;
import com.ifengyu.intercom.update.dolphin.f;
import com.ifengyu.intercom.update.sealshark.d;
import java.io.IOException;

/* compiled from: UpdateDeviceService */
public class a implements h {
    private static a a = null;
    private j b;
    private f c;
    private d d;

    private a() {
    }

    public static a a() {
        if (a == null) {
            a = new a();
        }
        return a;
    }

    public void a(j jVar) {
        s.a("UpdateDeviceService", "onDeviceConnected");
        this.b = jVar;
    }

    public void a(String str) {
        s.a("UpdateDeviceService", "onDeviceDisConnected");
        this.b = null;
    }

    public void b(String str) {
    }

    public void a(String str, ConnectionFailedReason connectionFailedReason) {
    }

    public void a(String str, Command command) {
        s.a("UpdateDeviceService", "onDolphinCmdReceived");
        if (command.hasFileResp()) {
            s.b("UpdateDeviceService", "received a FileResp");
            if (this.c != null) {
                FileResponse fileResp = command.getFileResp();
                this.c.a(fileResp.getResult(), fileResp.getAckSeq());
            }
        }
        if (command.hasUpdateResponse()) {
            s.b("UpdateDeviceService", "received a updateResponse.");
            if (this.c != null) {
                UpdateResponse updateResponse = command.getUpdateResponse();
                this.c.a(updateResponse.getState(), updateResponse.getResult(), updateResponse.getAck());
            }
        }
    }

    public void a(f fVar) {
        this.c = fVar;
    }

    public void a(String str, m mVar) {
        s.a("UpdateDeviceService", "onSealCmdReceived");
        if (mVar.a() == 20014 && (mVar.b() instanceof SEAL_UpGradeFileResponse)) {
            SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse = (SEAL_UpGradeFileResponse) mVar.b();
            SEAL_UP_UERR result = sEAL_UpGradeFileResponse.getResult();
            if (this.d == null) {
                return;
            }
            if (result == SEAL_UP_UERR.SEAL_UP_RESULT_LOW_POWER) {
                this.d.a();
            } else {
                this.d.a(result == SEAL_UP_UERR.SEAL_UP_RESULT_OK, sEAL_UpGradeFileResponse.getOffset());
            }
        }
    }

    public void a(String str, n nVar) {
        s.a("UpdateDeviceService", "onSharkCmdReceived");
        if (nVar.a() == 20014 && (nVar.b() instanceof SHARK_UpGradeFileResponse)) {
            SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse = (SHARK_UpGradeFileResponse) nVar.b();
            SHARK_UP_UERR result = sHARK_UpGradeFileResponse.getResult();
            if (this.d == null) {
                return;
            }
            if (result == SHARK_UP_UERR.SHARK_UP_RESULT_LOW_POWER) {
                this.d.a();
            } else {
                this.d.a(result == SHARK_UP_UERR.SHARK_UP_RESULT_OK, sHARK_UpGradeFileResponse.getOffset());
            }
        }
    }

    public void b(int i) {
    }

    public void a(String str, c cVar) {
    }

    public void a(d dVar) {
        this.d = dVar;
    }

    public boolean a(byte[] bArr) {
        return a(SendDataWrap.a(bArr));
    }

    public boolean a(Message message) {
        return a(SendDataWrap.a(1, message, -1));
    }

    public boolean a(int i, com.ifengyu.intercom.node.a aVar) {
        return a(SendDataWrap.a(i, aVar.b(), aVar.a()));
    }

    private boolean a(SendDataWrap sendDataWrap) {
        try {
            if (this.b != null) {
                this.b.a(3, sendDataWrap);
                return true;
            }
            s.d("UpdateDeviceService", "Device has disconnected.");
            return false;
        } catch (IOException | InterruptedException e) {
            s.b("UpdateDeviceService", "Got exception while sending Data, ", e);
        }
    }
}
