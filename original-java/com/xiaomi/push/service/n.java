package com.xiaomi.push.service;

import android.accounts.Account;
import android.accounts.OnAccountsUpdateListener;
import android.text.TextUtils;

class n implements OnAccountsUpdateListener {
    final /* synthetic */ m a;

    n(m mVar) {
        this.a = mVar;
    }

    public void onAccountsUpdated(Account[] accountArr) {
        Account account;
        boolean z = false;
        if (accountArr != null && accountArr.length > 0) {
            int length = accountArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    account = null;
                    break;
                }
                account = accountArr[i];
                if (account != null && TextUtils.equals("com.xiaomi", account.type)) {
                    break;
                }
                i++;
            }
            if (account != null && !TextUtils.isEmpty(account.name)) {
                z = true;
            }
            boolean c = o.a(this.a.a).c();
            if (z && !c) {
                o.a(this.a.a).a(account.name);
                this.a.a(account.name);
            } else if (!z && c) {
                o.a(this.a.a).a();
                this.a.a("0");
            } else if (z && c && !TextUtils.equals(o.a(this.a.a).b(), account.name)) {
                o.a(this.a.a).a(account.name);
                this.a.a(account.name);
            }
        }
    }
}
