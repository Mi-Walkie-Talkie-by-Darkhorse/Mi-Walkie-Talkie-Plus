package com.ifengyu.intercom.update.dolphin;

import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import android.os.SystemClock;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.widget.view.ProgressCircle;
import com.xiaomi.mipush.sdk.Constants;

/* compiled from: UpdateMcuTask.java */
/* loaded from: classes2.dex */
public class l extends AsyncTask<ContentValues, Integer, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private k f7145a;

    /* renamed from: b  reason: collision with root package name */
    private Context f7146b;

    /* renamed from: c  reason: collision with root package name */
    private a f7147c;
    private boolean d;

    /* compiled from: UpdateMcuTask.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(int i, ProgressCircle.STATE state);
    }

    public l(Context context) {
        this.f7146b = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Boolean doInBackground(ContentValues... contentValuesArr) {
        z.d("UpdateMcuTask", "doInBackground");
        ContentValues contentValues = contentValuesArr[0];
        int intValue = contentValues.getAsInteger(Constants.VERSION).intValue();
        MitalkProtos.FILETYPE valueOf = MitalkProtos.FILETYPE.valueOf(contentValues.getAsInteger("type").intValue());
        String asString = contentValues.getAsString("filePath");
        o.a(intValue >= 0, "invalid version %s", Integer.valueOf(intValue));
        o.a(asString, (Object) "file path is null");
        publishProgress(Integer.valueOf(this.f7145a.a()));
        this.f7145a.a(intValue, valueOf, asString);
        while (!this.f7145a.b()) {
            publishProgress(Integer.valueOf(this.f7145a.a()));
            SystemClock.sleep(500L);
            if (!j.b().a()) {
                return false;
            }
        }
        if (this.f7145a.c()) {
            publishProgress(Integer.valueOf(this.f7145a.a()));
        }
        return Boolean.valueOf(this.f7145a.c());
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
        this.f7145a = k.a(this.f7146b, this.d);
    }

    public l(Context context, a aVar, boolean z) {
        this(context);
        this.f7147c = aVar;
        this.d = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onProgressUpdate(Integer... numArr) {
        int intValue = numArr[0].intValue();
        z.a("UpdateMcuTask", "onProgressUpdate values=" + intValue);
        super.onProgressUpdate(numArr);
        a aVar = this.f7147c;
        if (aVar != null) {
            if (intValue < 2) {
                aVar.a(intValue, ProgressCircle.STATE.UPDATING);
            } else if (intValue < 5) {
                aVar.a(intValue, ProgressCircle.STATE.UPDATING);
            } else if (intValue < 99) {
                aVar.a(intValue, ProgressCircle.STATE.UPDATING);
            } else if (intValue <= 100) {
                aVar.a(intValue, ProgressCircle.STATE.UPDATING);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        z.a("UpdateMcuTask", "onPostExecute result=" + bool);
        UpdateMcuActivity.H = false;
        if (bool.booleanValue()) {
            a aVar = this.f7147c;
            if (aVar != null) {
                aVar.a(100, ProgressCircle.STATE.SUCCESS);
            }
        } else {
            a aVar2 = this.f7147c;
            if (aVar2 != null) {
                aVar2.a(100, ProgressCircle.STATE.FAILURE);
            }
        }
        this.f7145a.d();
        super.onPostExecute(bool);
    }
}
