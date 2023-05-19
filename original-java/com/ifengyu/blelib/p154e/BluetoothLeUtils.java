package com.ifengyu.blelib.p154e;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.ifengyu.blelib.e.a */
/* loaded from: classes2.dex */
class BluetoothLeUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m14331a(@Nullable SparseArray<byte[]> sparseArray) {
        if (sparseArray == null) {
            return "null";
        }
        if (sparseArray.size() == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        for (int i = 0; i < sparseArray.size(); i++) {
            sb.append(sparseArray.keyAt(i));
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(Arrays.toString(sparseArray.valueAt(i)));
        }
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T> String m14330b(@Nullable Map<T, byte[]> map) {
        if (map == null) {
            return "null";
        }
        if (map.isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        Iterator<Map.Entry<T, byte[]>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            T key = it2.next().getKey();
            sb.append(key);
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(Arrays.toString(map.get(key)));
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
