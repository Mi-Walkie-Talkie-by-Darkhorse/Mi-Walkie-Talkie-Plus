package com.ifengyu.intercom.p216ui.login;

import com.qmuiteam.qmui.arch.QMUIFragment;
import com.qmuiteam.qmui.arch.p241h.FirstFragmentFinder;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.ifengyu.intercom.ui.login.LoginActivity_FragmentFinder */
/* loaded from: classes2.dex */
public class LoginActivity_FragmentFinder implements FirstFragmentFinder {
    private Map<Class<? extends QMUIFragment>, Integer> mClassToIdMap = new HashMap();
    private Map<Integer, Class<? extends QMUIFragment>> mIdToClassMap = new HashMap();

    public LoginActivity_FragmentFinder() {
        this.mClassToIdMap.put(LoginFragment.class, 100);
        this.mIdToClassMap.put(100, LoginFragment.class);
    }

    @Override // com.qmuiteam.qmui.arch.p241h.FirstFragmentFinder
    public Class<? extends QMUIFragment> getFragmentClassById(int i) {
        return this.mIdToClassMap.get(Integer.valueOf(i));
    }

    @Override // com.qmuiteam.qmui.arch.p241h.FirstFragmentFinder
    public int getIdByFragmentClass(Class<? extends QMUIFragment> cls) {
        Integer num = this.mClassToIdMap.get(cls);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
