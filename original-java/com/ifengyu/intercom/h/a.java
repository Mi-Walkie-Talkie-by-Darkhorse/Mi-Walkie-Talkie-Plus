package com.ifengyu.intercom.h;

import com.google.protobuf.Message;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionFailedReason;
import com.ifengyu.intercom.node.SendDataWrap;
import com.ifengyu.intercom.node.b;
import com.ifengyu.intercom.node.g;
import com.ifengyu.intercom.node.i;
import com.ifengyu.intercom.node.l;
import com.ifengyu.intercom.node.m;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.update.dolphin.f;
import com.ifengyu.intercom.update.sealshark.d;
import java.io.IOException;

/* compiled from: UpdateDeviceService.java */
/* loaded from: classes2.dex */
public class a implements g {
    private static a d;

    /* renamed from: a  reason: collision with root package name */
    private i f5299a;

    /* renamed from: b  reason: collision with root package name */
    private f f5300b;

    /* renamed from: c  reason: collision with root package name */
    private d f5301c;

    private a() {
    }

    public static a a() {
        if (d == null) {
            d = new a();
        }
        return d;
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(int i) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, ConnectionFailedReason connectionFailedReason) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, b bVar) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void b(String str) {
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(i iVar) {
        z.d("UpdateDeviceService", "onDeviceConnected");
        this.f5299a = iVar;
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str) {
        z.d("UpdateDeviceService", "onDeviceDisConnected");
        this.f5299a = null;
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, MitalkProtos.Command command) {
        z.d("UpdateDeviceService", "onDolphinCmdReceived");
        if (command.hasFileResp()) {
            z.a("UpdateDeviceService", "received a FileResp");
            if (this.f5300b != null) {
                MitalkProtos.FileResponse fileResp = command.getFileResp();
                this.f5300b.a(fileResp.getResult(), fileResp.getAckSeq());
            }
        }
        if (command.hasUpdateResponse()) {
            z.a("UpdateDeviceService", "received a updateResponse.");
            if (this.f5300b != null) {
                MitalkProtos.UpdateResponse updateResponse = command.getUpdateResponse();
                this.f5300b.a(updateResponse.getState(), updateResponse.getResult(), updateResponse.getAck());
            }
        }
    }

    public void a(f fVar) {
        this.f5300b = fVar;
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, l lVar) {
        z.d("UpdateDeviceService", "onSealCmdReceived");
        if (lVar.a() == 20014 && (lVar.b() instanceof SealProtos.SEAL_UpGradeFileResponse)) {
            SealProtos.SEAL_UpGradeFileResponse sEAL_UpGradeFileResponse = (SealProtos.SEAL_UpGradeFileResponse) lVar.b();
            SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR result = sEAL_UpGradeFileResponse.getResult();
            d dVar = this.f5301c;
            if (dVar == null) {
                return;
            }
            if (result == SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR.SEAL_UP_RESULT_LOW_POWER) {
                dVar.a();
            } else {
                dVar.a(result == SealProtos.SEAL_UpGradeFileResponse.SEAL_UP_UERR.SEAL_UP_RESULT_OK, sEAL_UpGradeFileResponse.getOffset());
            }
        }
    }

    @Override // com.ifengyu.intercom.node.g
    public void a(String str, m mVar) {
        z.d("UpdateDeviceService", "onSharkCmdReceived");
        if (mVar.a() == 20014 && (mVar.b() instanceof SharkProtos.SHARK_UpGradeFileResponse)) {
            SharkProtos.SHARK_UpGradeFileResponse sHARK_UpGradeFileResponse = (SharkProtos.SHARK_UpGradeFileResponse) mVar.b();
            SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR result = sHARK_UpGradeFileResponse.getResult();
            d dVar = this.f5301c;
            if (dVar == null) {
                return;
            }
            if (result == SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR.SHARK_UP_RESULT_LOW_POWER) {
                dVar.a();
            } else {
                dVar.a(result == SharkProtos.SHARK_UpGradeFileResponse.SHARK_UP_UERR.SHARK_UP_RESULT_OK, sHARK_UpGradeFileResponse.getOffset());
            }
        }
    }

    public void a(d dVar) {
        this.f5301c = dVar;
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
            if (this.f5299a != null) {
                this.f5299a.a(3, sendDataWrap);
                return true;
            }
            z.e("UpdateDeviceService", "Device has disconnected.");
            return false;
        } catch (IOException | InterruptedException e) {
            z.a("UpdateDeviceService", "Got exception while sending Data, ", e);
            return false;
        }
    }
}
