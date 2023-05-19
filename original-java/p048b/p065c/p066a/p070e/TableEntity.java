package p048b.p065c.p066a.p070e;

import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.c.a.e.f */
/* loaded from: classes2.dex */
public class TableEntity {

    /* renamed from: a */
    public String f5350a;

    /* renamed from: b */
    private List<ColumnEntity> f5351b = new ArrayList();

    public TableEntity(String str) {
        this.f5350a = str;
    }

    /* renamed from: a */
    public TableEntity m21075a(ColumnEntity columnEntity) {
        this.f5351b.add(columnEntity);
        return this;
    }

    /* renamed from: b */
    public String m21074b() {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(this.f5350a);
        sb.append('(');
        for (ColumnEntity columnEntity : this.f5351b) {
            if (columnEntity.f5341c != null) {
                sb.append("PRIMARY KEY (");
                for (String str : columnEntity.f5341c) {
                    sb.append(str);
                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                }
                sb.deleteCharAt(sb.length() - 1);
                sb.append(")");
            } else {
                sb.append(columnEntity.f5339a);
                sb.append(" ");
                sb.append(columnEntity.f5340b);
                if (columnEntity.f5343e) {
                    sb.append(" NOT NULL");
                }
                if (columnEntity.f5342d) {
                    sb.append(" PRIMARY KEY");
                }
                if (columnEntity.f5344f) {
                    sb.append(" AUTOINCREMENT");
                }
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
        }
        if (sb.toString().endsWith(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            sb.deleteCharAt(sb.length() - 1);
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: c */
    public int m21073c() {
        return this.f5351b.size();
    }

    /* renamed from: d */
    public int m21072d(String str) {
        int m21073c = m21073c();
        for (int i = 0; i < m21073c; i++) {
            if (this.f5351b.get(i).f5339a.equals(str)) {
                return i;
            }
        }
        return -1;
    }
}
