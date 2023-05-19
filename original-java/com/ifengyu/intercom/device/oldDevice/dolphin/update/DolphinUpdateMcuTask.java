package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import android.os.SystemClock;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.p216ui.widget.view.ProgressCircle;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.xiaomi.mipush.sdk.Constants;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.l */
/* loaded from: classes2.dex */
public class DolphinUpdateMcuTask extends AsyncTask<ContentValues, Integer, Boolean> {

    /* renamed from: a */
    private DolphinUpdateHelper f13040a;

    /* renamed from: b */
    private Context f13041b;

    /* renamed from: c */
    private InterfaceC3609a f13042c;

    /* renamed from: d */
    private boolean f13043d;

    /* renamed from: e */
    private String f13044e;

    /* compiled from: DolphinUpdateMcuTask.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.l$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC3609a {
        /* renamed from: a */
        void mo13091a(int i, ProgressCircle.STATE state);
    }

    public DolphinUpdateMcuTask(Context context, InterfaceC3609a interfaceC3609a, boolean z, String str) {
        this.f13041b = context;
        this.f13042c = interfaceC3609a;
        this.f13043d = z;
        this.f13044e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public Boolean doInBackground(ContentValues... contentValuesArr) {
        C4161y.m11043l("DolphinUpdateMcuTask", "doInBackground");
        ContentValues contentValues = contentValuesArr[0];
        int intValue = contentValues.getAsInteger(Constants.VERSION).intValue();
        MitalkProtos.FILETYPE valueOf = MitalkProtos.FILETYPE.valueOf(contentValues.getAsInteger("type").intValue());
        String asString = contentValues.getAsString("filePath");
        CommonUtil.m11086d(intValue >= 0, "invalid version %s", Integer.valueOf(intValue));
        CommonUtil.m11088b(asString, "file path is null");
        publishProgress(Integer.valueOf(this.f13040a.m13129m()));
        this.f13040a.m13141B(intValue, valueOf, asString);
        while (!this.f13040a.m13125q()) {
            publishProgress(Integer.valueOf(this.f13040a.m13129m()));
            SystemClock.sleep(500L);
            if (!BleCoreClient.m12373n().m12372o(this.f13044e)) {
                return Boolean.FALSE;
            }
        }
        if (this.f13040a.m13124r()) {
            publishProgress(Integer.valueOf(this.f13040a.m13129m()));
        }
        return Boolean.valueOf(this.f13040a.m13124r());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: b */
    public void onPostExecute(Boolean bool) {
        C4161y.m11054a("DolphinUpdateMcuTask", "onPostExecute result=" + bool);
        DolphinUpdateMcuActivity.f12964B = false;
        if (bool.booleanValue()) {
            InterfaceC3609a interfaceC3609a = this.f13042c;
            if (interfaceC3609a != null) {
                interfaceC3609a.mo13091a(100, ProgressCircle.STATE.SUCCESS);
            }
        } else {
            InterfaceC3609a interfaceC3609a2 = this.f13042c;
            if (interfaceC3609a2 != null) {
                interfaceC3609a2.mo13091a(100, ProgressCircle.STATE.FAILURE);
            }
        }
        this.f13040a.m13118x();
        super.onPostExecute(bool);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: c */
    public void onProgressUpdate(Integer... numArr) {
        int intValue = numArr[0].intValue();
        C4161y.m11054a("DolphinUpdateMcuTask", "onProgressUpdate values=" + intValue);
        super.onProgressUpdate(numArr);
        InterfaceC3609a interfaceC3609a = this.f13042c;
        if (interfaceC3609a == null) {
            return;
        }
        if (intValue < 2) {
            interfaceC3609a.mo13091a(intValue, ProgressCircle.STATE.UPDATING);
        } else if (intValue < 5) {
            interfaceC3609a.mo13091a(intValue, ProgressCircle.STATE.UPDATING);
        } else if (intValue < 99) {
            interfaceC3609a.mo13091a(intValue, ProgressCircle.STATE.UPDATING);
        } else if (intValue <= 100) {
            interfaceC3609a.mo13091a(intValue, ProgressCircle.STATE.UPDATING);
        }
    }

    /* renamed from: d */
    public void m13092d(InterfaceC3609a interfaceC3609a) {
        this.f13042c = interfaceC3609a;
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
        this.f13040a = new DolphinUpdateHelper(this.f13041b, this.f13043d, this.f13044e);
    }
}
