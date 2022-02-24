package com.ifengyu.intercom.i;

import com.ifengyu.intercom.R;

/* compiled from: HttpUIHelper.java */
/* loaded from: classes2.dex */
public class x {
    public static int a(int i) {
        switch (i) {
            case 13:
                return R.string.register_phone_had_refistered;
            case 14:
                return R.string.lite_error_not_register;
            case 15:
                return R.string.login_verify_code_error;
            case 16:
            default:
                return R.string.network_exception;
            case 17:
                return R.string.login_error_invalid_phone_number;
            case 18:
                return R.string.login_verify_code_send_to_busy;
        }
    }
}
