package com.ksyun.ks3.services;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ksyun.ks3.auth.a;
import com.ksyun.ks3.exception.Ks3ClientException;
import com.ksyun.ks3.services.request.Ks3HttpRequest;
import com.loopj.android.http.b;
import com.loopj.android.http.d;
import com.loopj.android.http.h;
import com.loopj.android.http.i;

/* compiled from: Ks3HttpExector */
public class g {
    private b a;

    public void a(com.ksyun.ks3.model.acl.b bVar, final Ks3HttpRequest ks3HttpRequest, final d dVar, f fVar, final Context context, String str, b bVar2, Boolean bool) {
        if (TextUtils.isEmpty(str)) {
            Log.e("ks3_android_sdk", "The endpoint is empty,do you call setEndpoint() after you create Ks3Client?");
            return;
        }
        if (fVar != null) {
            if (bool.booleanValue()) {
                this.a = a.a(fVar);
            } else {
                this.a = i.a(fVar);
            }
        } else if (bool.booleanValue()) {
            this.a = a.a();
        } else {
            this.a = i.a();
        }
        ks3HttpRequest.a(bVar);
        if (ks3HttpRequest.d() == null) {
            ks3HttpRequest.c(str);
        } else if (fVar.a().booleanValue()) {
            ks3HttpRequest.c(str);
        } else {
            ks3HttpRequest.c(ks3HttpRequest.d() + "." + str);
        }
        if (bool.booleanValue()) {
            if (bVar2 != null) {
                ks3HttpRequest.a(bVar2);
                a(ks3HttpRequest, (d) new d() {
                    public void a(a aVar) {
                        g.this.a(ks3HttpRequest, context, dVar);
                    }

                    public void b(a aVar) {
                        dVar.onFailure(0, null, null, new Ks3ClientException(aVar.a()));
                    }
                }, dVar);
                return;
            }
            try {
                ks3HttpRequest.a((d) null, dVar);
                a(ks3HttpRequest, context, dVar);
            } catch (Ks3ClientException e) {
                dVar.onFailure(0, null, null, e);
            }
        } else if (bVar2 != null) {
            ks3HttpRequest.a(bVar2);
            AnonymousClass2 r0 = new d() {
                public void a(a aVar) {
                    g.this.a(ks3HttpRequest, context, dVar);
                }

                public void b(a aVar) {
                    dVar.onFailure(0, null, null, new Ks3ClientException(aVar.a()));
                }
            };
            try {
                ks3HttpRequest.a((d) r0, dVar);
            } catch (Ks3ClientException e2) {
                r0.a = false;
                dVar.onFailure(0, null, null, e2);
            }
        } else {
            try {
                ks3HttpRequest.a((d) null, dVar);
                a(ks3HttpRequest, context, dVar);
            } catch (Ks3ClientException e3) {
                dVar.onFailure(0, null, null, e3);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Ks3HttpRequest ks3HttpRequest, Context context, d dVar) {
        h hVar = null;
        a(ks3HttpRequest);
        Log.d("ks3_android_sdk", "requset url = " + ks3HttpRequest.c());
        switch (ks3HttpRequest.k()) {
            case GET:
                hVar = this.a.b(context, ks3HttpRequest.o().a(), ks3HttpRequest.o().b(), null, dVar);
                break;
            case POST:
                hVar = this.a.a(context, ks3HttpRequest.o().a(), ks3HttpRequest.o().b(), ks3HttpRequest.e(), ks3HttpRequest.m(), (i) dVar);
                break;
            case PUT:
                hVar = this.a.b(context, ks3HttpRequest.o().a(), ks3HttpRequest.o().b(), ks3HttpRequest.e(), ks3HttpRequest.m(), (i) dVar);
                break;
            case DELETE:
                hVar = this.a.a(context, ks3HttpRequest.o().a(), ks3HttpRequest.o().b(), (i) dVar);
                break;
            case HEAD:
                hVar = this.a.a(context, ks3HttpRequest.o().a(), ks3HttpRequest.o().b(), null, dVar);
                break;
            default:
                Log.e("ks3_android_sdk", "unsupport http method ! ");
                break;
        }
        ks3HttpRequest.a(hVar);
    }

    private void a(final Ks3HttpRequest ks3HttpRequest, final d dVar, final d dVar2) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    ks3HttpRequest.a(dVar, dVar2);
                } catch (Ks3ClientException e) {
                    dVar.a = false;
                    dVar2.onFailure(0, null, null, e);
                }
            }
        }).start();
    }

    private void a(Ks3HttpRequest ks3HttpRequest) {
        ks3HttpRequest.o().a();
        ks3HttpRequest.o().b();
        ks3HttpRequest.o().c();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("**url** " + ks3HttpRequest.o().a()).append("\n");
        stringBuffer.append("**heads**").append("\n");
        for (int i = 0; i < ks3HttpRequest.o().b().length; i++) {
            stringBuffer.append(ks3HttpRequest.o().b()[i].getName()).append("=>").append(ks3HttpRequest.o().b()[i].getValue()).append("\n");
        }
        Log.e("ks3_android_sdk", stringBuffer.toString());
    }
}
