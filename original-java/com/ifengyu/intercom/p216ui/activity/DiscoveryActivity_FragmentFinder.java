package com.ifengyu.intercom.p216ui.activity;

import com.ifengyu.intercom.p216ui.fragment.DiscoveryFragment;
import com.qmuiteam.qmui.arch.QMUIFragment;
import com.qmuiteam.qmui.arch.p241h.FirstFragmentFinder;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.ifengyu.intercom.ui.activity.DiscoveryActivity_FragmentFinder */
/* loaded from: classes2.dex */
public class DiscoveryActivity_FragmentFinder implements FirstFragmentFinder {
    private Map<Class<? extends QMUIFragment>, Integer> mClassToIdMap = new HashMap();
    private Map<Integer, Class<? extends QMUIFragment>> mIdToClassMap = new HashMap();

    public DiscoveryActivity_FragmentFinder() {
        this.mClassToIdMap.put(DiscoveryFragment.class, 100);
        this.mIdToClassMap.put(100, DiscoveryFragment.class);
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
