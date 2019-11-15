package org.greenrobot.greendao.c;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.c.i.b;
import org.greenrobot.greendao.f;

/* compiled from: WhereCollector */
class h<T> {
    private final a<T, ?> a;
    private final List<i> b = new ArrayList();
    private final String c;

    h(a<T, ?> aVar, String str) {
        this.a = aVar;
        this.c = str;
    }

    /* access modifiers changed from: 0000 */
    public void a(i iVar, i... iVarArr) {
        a(iVar);
        this.b.add(iVar);
        for (i iVar2 : iVarArr) {
            a(iVar2);
            this.b.add(iVar2);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(i iVar) {
        if (iVar instanceof b) {
            a(((b) iVar).d);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(f fVar) {
        boolean z = false;
        if (this.a != null) {
            f[] properties = this.a.getProperties();
            int length = properties.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (fVar == properties[i]) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                throw new DaoException("Property '" + fVar.c + "' is not part of " + this.a);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(StringBuilder sb, String str, List<Object> list) {
        ListIterator listIterator = this.b.listIterator();
        while (listIterator.hasNext()) {
            if (listIterator.hasPrevious()) {
                sb.append(" AND ");
            }
            i iVar = (i) listIterator.next();
            iVar.a(sb, str);
            iVar.a(list);
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean a() {
        return this.b.isEmpty();
    }
}
