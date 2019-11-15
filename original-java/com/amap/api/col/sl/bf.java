package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.help.Inputtips.InputtipsListener;
import com.amap.api.services.help.InputtipsQuery;
import com.amap.api.services.help.Tip;
import com.amap.api.services.interfaces.IInputtipsSearch;
import java.util.ArrayList;

/* compiled from: InputtipsSearchCore */
public class bf implements IInputtipsSearch {
    private Context a;
    /* access modifiers changed from: private */
    public InputtipsListener b;
    /* access modifiers changed from: private */
    public Handler c = ac.a();
    /* access modifiers changed from: private */
    public InputtipsQuery d;

    public bf(Context context, InputtipsListener inputtipsListener) {
        this.a = context.getApplicationContext();
        this.b = inputtipsListener;
    }

    public bf(Context context, InputtipsQuery inputtipsQuery) {
        this.a = context.getApplicationContext();
        this.d = inputtipsQuery;
    }

    public InputtipsQuery getQuery() {
        return this.d;
    }

    public void setQuery(InputtipsQuery inputtipsQuery) {
        this.d = inputtipsQuery;
    }

    public void setInputtipsListener(InputtipsListener inputtipsListener) {
        this.b = inputtipsListener;
    }

    public void requestInputtipsAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.obj = bf.this.b;
                    obtainMessage.arg1 = 5;
                    try {
                        ArrayList a2 = bf.this.a(bf.this.d);
                        Bundle bundle = new Bundle();
                        bundle.putParcelableArrayList("result", a2);
                        obtainMessage.setData(bundle);
                        obtainMessage.what = 1000;
                    } catch (AMapException e) {
                        obtainMessage.what = e.getErrorCode();
                    } finally {
                        bf.this.c.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "Inputtips", "requestInputtipsAsynThrowable");
        }
    }

    public ArrayList<Tip> requestInputtips() throws AMapException {
        return a(this.d);
    }

    public void requestInputtips(String str, String str2) throws AMapException {
        requestInputtips(str, str2, null);
    }

    public void requestInputtips(String str, String str2, String str3) throws AMapException {
        if (str == null || str.equals("")) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        }
        this.d = new InputtipsQuery(str, str2);
        this.d.setType(str3);
        requestInputtipsAsyn();
    }

    /* access modifiers changed from: private */
    public ArrayList<Tip> a(InputtipsQuery inputtipsQuery) throws AMapException {
        try {
            aa.a(this.a);
            if (inputtipsQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            } else if (inputtipsQuery.getKeyword() != null && !inputtipsQuery.getKeyword().equals("")) {
                return (ArrayList) new y(this.a, inputtipsQuery).a();
            } else {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
        } catch (Throwable th) {
            t.a(th, "Inputtips", "requestInputtips");
            if (!(th instanceof AMapException)) {
                return null;
            }
            throw ((AMapException) th);
        }
    }
}
