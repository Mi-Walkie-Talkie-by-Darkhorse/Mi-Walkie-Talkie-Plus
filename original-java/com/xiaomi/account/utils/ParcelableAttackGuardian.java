package com.xiaomi.account.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.BadParcelableException;
import android.util.Log;

public class ParcelableAttackGuardian {
    private static final String TAG = ParcelableAttackGuardian.class.getSimpleName();

    public boolean safeCheck(Activity activity) {
        if (activity == null || activity.getIntent() == null) {
            return true;
        }
        try {
            unparcelIntent(new Intent(activity.getIntent()));
            return true;
        } catch (BadParcelableException e) {
            Log.w(TAG, "fail checking ParcelableAttack for Activity " + activity.getClass().getName());
            return false;
        } catch (RuntimeException e2) {
            if (!(e2.getCause() instanceof ClassNotFoundException)) {
                return true;
            }
            Log.w(TAG, "fail checking SerializableAttack for Activity " + activity.getClass().getName());
            return false;
        }
    }

    /* access modifiers changed from: 0000 */
    public void unparcelIntent(Intent intent) throws BadParcelableException {
        intent.getStringExtra("");
    }
}
