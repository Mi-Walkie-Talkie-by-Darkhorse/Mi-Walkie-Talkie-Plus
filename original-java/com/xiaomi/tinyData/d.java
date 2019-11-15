package com.xiaomi.tinyData;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.misc.g;
import com.xiaomi.push.service.ay;
import com.xiaomi.xmpush.thrift.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class d {
    private static d a;
    private final Context b;
    private Map<String, e> c = new HashMap();
    private final HashMap<String, ArrayList<e>> d = new HashMap<>();
    private final HashMap<String, ArrayList<e>> e = new HashMap<>();

    private d(Context context) {
        this.b = context;
    }

    public static d a(Context context) {
        if (context == null) {
            b.d("[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed.");
            return null;
        }
        if (a == null) {
            synchronized (d.class) {
                if (a == null) {
                    a = new d(context);
                }
            }
        }
        return a;
    }

    /* access modifiers changed from: 0000 */
    public Context a() {
        return this.b;
    }

    public void a(e eVar, String str) {
        if (eVar == null) {
            b.d("[TinyDataManager]: please do not add null mUploader to TinyDataManager.");
        } else if (TextUtils.isEmpty(str)) {
            b.d("[TinyDataManager]: can not add a provider from unkown resource.");
        } else {
            a aVar = new a(this);
            aVar.b = str;
            aVar.a = eVar;
            g.a(this.b).a((Runnable) aVar);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(e eVar, String str) {
        ArrayList arrayList;
        if ("com.xiaomi.xmsf".equals(str)) {
            String j = eVar.j();
            if (!TextUtils.isEmpty(j)) {
                str = j;
            }
            arrayList = (ArrayList) this.e.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.e.put(str, arrayList);
            }
        } else {
            arrayList = (ArrayList) this.d.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.d.put(str, arrayList);
            }
        }
        arrayList.add(eVar);
        if (arrayList.size() > 80) {
            arrayList.remove(0);
        }
    }

    public void a(String str) {
        b bVar = new b(this);
        bVar.b = str;
        g.a(this.b).a((Runnable) bVar);
    }

    /* access modifiers changed from: 0000 */
    public e b() {
        e eVar = (e) this.c.get("UPLOADER_PUSH_CHANNEL");
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = (e) this.c.get("UPLOADER_HTTP");
        if (eVar2 == null) {
            return null;
        }
        return eVar2;
    }

    public boolean b(e eVar, String str) {
        if (TextUtils.isEmpty(str)) {
            b.a("pkgName is null or empty, upload ClientUploadDataItem failed.");
            return false;
        } else if (ay.a(eVar, false)) {
            return false;
        } else {
            c cVar = new c(this);
            cVar.b = eVar;
            cVar.c = str;
            g.a(this.b).a((Runnable) cVar);
            return true;
        }
    }

    /* access modifiers changed from: 0000 */
    public Map<String, e> c() {
        return this.c;
    }

    /* access modifiers changed from: 0000 */
    public Map<String, ArrayList<e>> d() {
        return this.d;
    }

    /* access modifiers changed from: 0000 */
    public Map<String, ArrayList<e>> e() {
        return this.e;
    }
}
