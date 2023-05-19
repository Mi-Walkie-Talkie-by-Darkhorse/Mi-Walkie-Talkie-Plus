package p287d.p288a.p290b;

import com.huawei.hms.framework.common.ContainerUtils;
import p287d.p288a.p289a.Interval;
import p287d.p288a.p289a.Intervalable;

/* renamed from: d.a.b.a */
/* loaded from: classes3.dex */
public class Emit extends Interval implements Intervalable {

    /* renamed from: c */
    private final String f23699c;

    @Override // p287d.p288a.p289a.Interval
    public String toString() {
        return super.toString() + ContainerUtils.KEY_VALUE_DELIMITER + this.f23699c;
    }
}
