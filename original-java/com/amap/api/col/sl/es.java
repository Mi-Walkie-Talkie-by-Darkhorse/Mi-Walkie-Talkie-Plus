package com.amap.api.col.sl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import com.amap.api.col.sl.j.a;
import com.amap.api.location.DPoint;
import com.mi.mimsgsdk.utils.MnsCommand;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;

/* compiled from: ConnectionServiceManager */
public class es {
    public boolean a = false;
    boolean b = false;
    private String c = null;
    private Context d = null;
    private boolean e = true;
    /* access modifiers changed from: private */
    public j f = null;
    private ServiceConnection g = null;
    private ServiceConnection h = null;
    private ServiceConnection i = null;
    private Intent j = new Intent();
    private String k = "com.autonavi.minimap";
    private String l = "com.amap.api.service.AMapService";
    private String m = "com.autonavi.minimap.LBSConnectionService";
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private List<Intent> t = new ArrayList();
    private boolean u = false;
    private String v = "invaid type";
    private String w = "empty appkey";
    private String x = "refused";
    private String y = "failed";

    public es(Context context) {
        this.d = context;
        try {
            this.c = bv.b(ff.a(bp.f(context).getBytes("UTF-8"), "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"));
        } catch (Throwable th) {
            fq.a(th, "ConnectionServiceManager", "ConnectionServiceManager");
        }
    }

    public final void a() {
        try {
            if (this.g != null && this.q) {
                this.d.unbindService(this.g);
            }
        } catch (Throwable th) {
        }
        try {
            if (this.h != null && this.r) {
                this.d.unbindService(this.h);
            }
        } catch (Throwable th2) {
        }
        try {
            if (this.i != null && this.s) {
                this.d.unbindService(this.i);
            }
        } catch (Throwable th3) {
        }
        if (this.t != null && this.t.size() > 0) {
            for (Intent stopService : this.t) {
                this.d.stopService(stopService);
            }
        }
        this.f = null;
        this.d = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.e = true;
        this.a = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.b = false;
        this.u = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t.clear();
        this.t = null;
    }

    public final void b() {
        try {
            if (this.g == null) {
                this.g = new ServiceConnection() {
                    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        es.this.a = true;
                        es.this.f = a.a(iBinder);
                    }

                    public final void onServiceDisconnected(ComponentName componentName) {
                        es.this.a = false;
                        es.this.f = null;
                    }
                };
            }
            if (this.h == null) {
                this.h = new ServiceConnection() {
                    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    }

                    public final void onServiceDisconnected(ComponentName componentName) {
                    }
                };
            }
            if (this.i == null) {
                this.i = new ServiceConnection() {
                    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    }

                    public final void onServiceDisconnected(ComponentName componentName) {
                    }
                };
            }
        } catch (Throwable th) {
            fq.a(th, "ConnectionServiceManager", "init");
        }
    }

    public final void c() {
        if (!this.u) {
            if (fp.b(this.d)) {
                this.j.putExtra("appkey", this.c);
                this.j.setComponent(new ComponentName(this.k, this.l));
                try {
                    this.n = this.d.bindService(this.j, this.g, 1);
                } catch (Throwable th) {
                }
                try {
                    if (!this.n) {
                        ArrayList m2 = fp.m();
                        if (m2 != null) {
                            Iterator it = m2.iterator();
                            while (it.hasNext()) {
                                String str = (String) it.next();
                                if (!str.equals(this.l)) {
                                    this.j.setComponent(new ComponentName(this.k, str));
                                    try {
                                        this.n = this.d.bindService(this.j, this.g, 1);
                                    } catch (Throwable th2) {
                                    }
                                    if (this.n) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    this.q = true;
                } catch (Throwable th3) {
                }
            }
            f();
            d();
            this.u = true;
        }
    }

    private void f() {
        if (fp.c(this.d)) {
            Intent intent = new Intent();
            intent.putExtra("appkey", this.c);
            intent.setComponent(new ComponentName(this.k, this.m));
            try {
                this.o = this.d.bindService(intent, this.h, 1);
            } catch (Throwable th) {
            }
            if (!this.o) {
                ArrayList n2 = fp.n();
                if (n2 != null) {
                    Iterator it = n2.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (!str.equals(this.m)) {
                            intent.setComponent(new ComponentName(this.k, str));
                            try {
                                this.o = this.d.bindService(intent, this.h, 1);
                            } catch (Throwable th2) {
                            }
                            if (this.n) {
                                break;
                            }
                        }
                    }
                }
            }
            this.r = true;
        }
    }

    public final void d() {
        if (!this.s && !this.u) {
            try {
                if (fp.g(this.d)) {
                    List<fs> y2 = fp.y();
                    if (y2 != null && y2.size() > 0) {
                        for (fs fsVar : y2) {
                            if (fsVar != null) {
                                if (fsVar.a()) {
                                    Intent intent = new Intent();
                                    intent.setComponent(new ComponentName(fsVar.b(), fsVar.c()));
                                    if (!TextUtils.isEmpty(fsVar.e())) {
                                        intent.setAction(fsVar.e());
                                    }
                                    List d2 = fsVar.d();
                                    if (d2 != null && d2.size() > 0) {
                                        for (int i2 = 0; i2 < d2.size(); i2++) {
                                            Iterator it = ((Map) d2.get(i2)).entrySet().iterator();
                                            if (it.hasNext()) {
                                                Entry entry = (Entry) it.next();
                                                intent.putExtra(((String) entry.getKey()).toString(), ((String) entry.getValue()).toString());
                                            }
                                        }
                                    }
                                    if (fsVar.f()) {
                                        this.d.startService(intent);
                                        this.t.add(intent);
                                    }
                                    if (this.d.bindService(intent, this.i, 1)) {
                                        this.p = true;
                                    }
                                }
                            }
                        }
                    }
                    this.s = true;
                }
            } catch (Throwable th) {
                fq.a(th, "ConnectionServiceManager", "bindOtherService");
            }
        }
    }

    private ev g() {
        try {
            if (!this.e || !this.n) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", "corse");
            bundle.putString("appkey", this.c);
            bundle.putInt(MnsCommand.OPENSDK, 1);
            if (this.f == null) {
                return null;
            }
            this.f.a(bundle);
            if (bundle.size() > 0) {
                return a(bundle);
            }
            return null;
        } catch (Throwable th) {
            fq.a(th, "ConnectionServiceManager", "sendCommand");
            return null;
        }
    }

    private ev a(Bundle bundle) {
        byte[] bArr;
        if (bundle == null || !bundle.containsKey("key")) {
            return null;
        }
        try {
            bArr = ff.b(bv.b(bundle.getString("key")), "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n");
        } catch (Throwable th) {
            fq.a(th, "ConnectionServiceManager", "parseData part");
            bArr = null;
        }
        if (!bundle.containsKey("result")) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(ff.a(bArr, bv.b(bundle.getString("result"))), "utf-8"));
            if (jSONObject.has(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2)) {
                String string = jSONObject.getString(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2);
                if (this.v.equals(string)) {
                    this.e = false;
                }
                if (this.w.equals(string)) {
                    this.e = false;
                }
                if (this.x.equals(string)) {
                    this.e = false;
                }
                this.y.equals(string);
                return null;
            }
            ev evVar = new ev("");
            evVar.b(jSONObject);
            evVar.setProvider("lbs");
            evVar.setLocationType(7);
            if ("WGS84".equals(evVar.e()) && fq.a(evVar.getLatitude(), evVar.getLongitude())) {
                DPoint a2 = fr.a(this.d, evVar.getLongitude(), evVar.getLatitude());
                evVar.setLatitude(a2.getLatitude());
                evVar.setLongitude(a2.getLongitude());
            }
            return evVar;
        } catch (Throwable th2) {
            fq.a(th2, es.class.getName(), "parseData");
            return null;
        }
    }

    public final ev e() {
        if (!fp.l()) {
            return null;
        }
        c();
        for (int i2 = 4; i2 > 0 && !this.a; i2--) {
            SystemClock.sleep(500);
        }
        if (!this.a) {
            return null;
        }
        ev g2 = g();
        if (g2 != null) {
            return g2;
        }
        return null;
    }
}
