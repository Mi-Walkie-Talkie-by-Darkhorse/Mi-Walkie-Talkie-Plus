package com.ifengyu.intercom.update.dolphin;

import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import android.os.SystemClock;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.protos.MitalkProtos.FILETYPE;
import com.ifengyu.intercom.ui.widget.view.ProgressCircle.STATE;

/* compiled from: UpdateMcuTask */
public class l extends AsyncTask<ContentValues, Integer, Boolean> {
    private k a;
    private Context b;
    private a c;
    private boolean d;

    /* compiled from: UpdateMcuTask */
    public interface a {
        void a(int i, STATE state);
    }

    public l(Context context) {
        this.b = context;
    }

    public l(Context context, a aVar, boolean z) {
        this(context);
        this.c = aVar;
        this.d = z;
    }

    /* access modifiers changed from: protected */
    public void onPreExecute() {
        super.onPreExecute();
        this.a = k.a(this.b, this.d);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public Boolean doInBackground(ContentValues... contentValuesArr) {
        s.a("UpdateMcuTask", "doInBackground");
        ContentValues contentValues = contentValuesArr[0];
        int intValue = contentValues.getAsInteger("version").intValue();
        FILETYPE valueOf = FILETYPE.valueOf(contentValues.getAsInteger("type").intValue());
        String asString = contentValues.getAsString("filePath");
        k.b(intValue >= 0, "invalid version %s", Integer.valueOf(intValue));
        k.a(asString, (Object) "file path is null");
        publishProgress(new Integer[]{Integer.valueOf(this.a.b())});
        this.a.a(intValue, valueOf, asString);
        while (!this.a.c()) {
            publishProgress(new Integer[]{Integer.valueOf(this.a.b())});
            SystemClock.sleep(500);
            if (!com.ifengyu.intercom.node.k.a().b()) {
                return Boolean.valueOf(false);
            }
        }
        if (this.a.d()) {
            publishProgress(new Integer[]{Integer.valueOf(this.a.b())});
        }
        return Boolean.valueOf(this.a.d());
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onProgressUpdate(Integer... numArr) {
        int intValue = numArr[0].intValue();
        s.b("UpdateMcuTask", "onProgressUpdate values=" + intValue);
        super.onProgressUpdate(numArr);
        if (this.c != null) {
            if (intValue < 2) {
                this.c.a(intValue, STATE.UPDATING);
            } else if (intValue < 5) {
                this.c.a(intValue, STATE.UPDATING);
            } else if (intValue < 99) {
                this.c.a(intValue, STATE.UPDATING);
            } else if (intValue <= 100) {
                this.c.a(intValue, STATE.UPDATING);
            }
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        s.b("UpdateMcuTask", "onPostExecute result=" + bool);
        UpdateMcuActivity.a = false;
        if (bool.booleanValue()) {
            if (this.c != null) {
                this.c.a(100, STATE.SUCCESS);
            }
        } else if (this.c != null) {
            this.c.a(100, STATE.FAILURE);
        }
        this.a.a();
        super.onPostExecute(bool);
    }
}
