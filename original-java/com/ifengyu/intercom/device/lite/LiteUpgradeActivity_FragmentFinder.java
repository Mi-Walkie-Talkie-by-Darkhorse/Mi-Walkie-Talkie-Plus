package com.ifengyu.intercom.device.lite;

import com.ifengyu.intercom.device.lite.fragment.FirmwareUpgradeFragment;
import com.qmuiteam.qmui.arch.QMUIFragment;
import com.qmuiteam.qmui.arch.p241h.FirstFragmentFinder;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class LiteUpgradeActivity_FragmentFinder implements FirstFragmentFinder {
    private Map<Class<? extends QMUIFragment>, Integer> mClassToIdMap = new HashMap();
    private Map<Integer, Class<? extends QMUIFragment>> mIdToClassMap = new HashMap();

    public LiteUpgradeActivity_FragmentFinder() {
        this.mClassToIdMap.put(FirmwareUpgradeFragment.class, 100);
        this.mIdToClassMap.put(100, FirmwareUpgradeFragment.class);
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
