package org.greenrobot.greendao.c;

import java.util.Date;
import java.util.List;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.b.d;
import org.greenrobot.greendao.f;

/* compiled from: WhereCondition */
public interface i {

    /* compiled from: WhereCondition */
    public static abstract class a implements i {
        protected final boolean a = true;
        protected final Object b;
        protected final Object[] c = null;

        public a(Object obj) {
            this.b = obj;
        }

        public void a(List<Object> list) {
            if (this.a) {
                list.add(this.b);
            } else if (this.c != null) {
                for (Object add : this.c) {
                    list.add(add);
                }
            }
        }
    }

    /* compiled from: WhereCondition */
    public static class b extends a {
        public final f d;
        public final String e;

        private static Object a(f fVar, Object obj) {
            if (obj != null && obj.getClass().isArray()) {
                throw new DaoException("Illegal value: found array, but simple object required");
            } else if (fVar.b == Date.class) {
                if (obj instanceof Date) {
                    return Long.valueOf(((Date) obj).getTime());
                }
                if (obj instanceof Long) {
                    return obj;
                }
                throw new DaoException("Illegal date value: expected java.util.Date or Long for value " + obj);
            } else if (fVar.b != Boolean.TYPE && fVar.b != Boolean.class) {
                return obj;
            } else {
                if (obj instanceof Boolean) {
                    return Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
                } else if (obj instanceof Number) {
                    int intValue = ((Number) obj).intValue();
                    if (intValue == 0 || intValue == 1) {
                        return obj;
                    }
                    throw new DaoException("Illegal boolean value: numbers must be 0 or 1, but was " + obj);
                } else if (!(obj instanceof String)) {
                    return obj;
                } else {
                    String str = (String) obj;
                    if ("TRUE".equalsIgnoreCase(str)) {
                        return Integer.valueOf(1);
                    }
                    if ("FALSE".equalsIgnoreCase(str)) {
                        return Integer.valueOf(0);
                    }
                    throw new DaoException("Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insensitive), but was " + obj);
                }
            }
        }

        public b(f fVar, String str, Object obj) {
            super(a(fVar, obj));
            this.d = fVar;
            this.e = str;
        }

        public void a(StringBuilder sb, String str) {
            d.a(sb, str, this.d).append(this.e);
        }
    }

    void a(StringBuilder sb, String str);

    void a(List<Object> list);
}
