package com.xiaomi.push.service;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.f;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.ArrayList;
import java.util.Iterator;

public class m {
    private static volatile m c;
    /* access modifiers changed from: private */
    public Context a;
    private AccountManager b;
    private ArrayList<a> d;
    private OnAccountsUpdateListener e;

    public interface a {
        void a(String str, Context context);
    }

    private m(Context context) {
        this.a = context;
        if (f.b(this.a)) {
            this.b = AccountManager.get(this.a);
            this.d = new ArrayList<>();
        }
    }

    public static m a(Context context) {
        if (c == null) {
            synchronized (m.class) {
                if (c == null) {
                    c = new m(context);
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: private */
    public void a(String str) {
        if (this.d != null && this.d.size() >= 1) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(str, this.a);
            }
        }
    }

    private void d() {
        if (this.e == null) {
            this.e = new n(this);
        }
    }

    private String e() {
        Account a2 = f.a(this.a);
        return a2 == null ? "" : a2.name;
    }

    public void a(a aVar) {
        if (this.d == null) {
            this.d = new ArrayList<>();
        }
        if (aVar != null) {
            int size = this.d.size();
            this.d.add(aVar);
            if (size == 0 && !a()) {
                b.a("MIIDManager startMIIDUpdateListener failed cause lack of GET_ACCOUNTS permission");
            }
        }
    }

    public boolean a() {
        try {
            if (!f.b(this.a)) {
                return false;
            }
            if (this.e == null) {
                d();
            }
            this.b.addOnAccountsUpdatedListener(this.e, null, true);
            return true;
        } catch (Exception e2) {
            b.d(e2.toString());
            return false;
        }
    }

    public void b() {
        if (f.b(this.a) && this.e != null) {
            this.b.removeOnAccountsUpdatedListener(this.e);
        }
    }

    public void b(a aVar) {
        if (this.d != null && aVar != null) {
            this.d.remove(aVar);
            if (this.d.size() == 0) {
                b();
            }
        }
    }

    public String c() {
        String e2 = e();
        if (!TextUtils.isEmpty(e2)) {
            o.a(this.a).a(e2);
            return e2;
        }
        o.a(this.a).a("0");
        return "0";
    }
}
