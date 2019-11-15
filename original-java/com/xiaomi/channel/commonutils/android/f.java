package com.xiaomi.channel.commonutils.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;

public class f {
    public static Account a(Context context) {
        try {
            if (!b(context)) {
                return null;
            }
            Account[] accountsByType = AccountManager.get(context).getAccountsByType("com.xiaomi");
            if (accountsByType == null || accountsByType.length <= 0) {
                return null;
            }
            return accountsByType[0];
        } catch (Exception e) {
            b.d(e.toString());
            return null;
        }
    }

    public static boolean b(Context context) {
        try {
            return context.getPackageManager().checkPermission("android.permission.GET_ACCOUNTS", context.getPackageName()) == 0;
        } catch (Throwable th) {
            return false;
        }
    }
}
