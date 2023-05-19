package com.ifengyu.talk.p235e;

import android.text.TextUtils;
import com.shanlitech.p245et.model.User;
import java.util.Comparator;
import p048b.p049a.p050a.p051a.Pinyin;

/* renamed from: com.ifengyu.talk.e.c */
/* loaded from: classes2.dex */
public class UserByNameComparator implements Comparator<User> {
    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(User user, User user2) {
        if (TextUtils.isEmpty(user.getName())) {
            return 1;
        }
        if (TextUtils.isEmpty(user2.getName())) {
            return -1;
        }
        return Pinyin.m21194e(user.getName(), "").toUpperCase().compareTo(Pinyin.m21194e(user2.getName(), "").toUpperCase());
    }
}
