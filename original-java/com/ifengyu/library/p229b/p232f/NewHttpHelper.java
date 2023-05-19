package com.ifengyu.library.p229b.p232f;

import com.ifengyu.library.R$string;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.library.b.f.a */
/* loaded from: classes2.dex */
public class NewHttpHelper {
    /* renamed from: a */
    public static String m8714a(int i) {
        if (i != 10042) {
            if (i != 10081) {
                if (i != 10110) {
                    switch (i) {
                        case 10071:
                            return UIUtils.m8603o(R$string.pwd_or_account_error);
                        case 10072:
                            return UIUtils.m8603o(R$string.invite_code_error);
                        case 10073:
                            return UIUtils.m8603o(R$string.verify_code_error);
                        default:
                            return UIUtils.m8603o(R$string.net_work_error_pls_retry);
                    }
                }
                return UIUtils.m8603o(R$string.request_fail_when_busy);
            }
            return UIUtils.m8603o(R$string.register_phone_had_refistered);
        }
        return UIUtils.m8603o(R$string.phone_not_register);
    }
}
