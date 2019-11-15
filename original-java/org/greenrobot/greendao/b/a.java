package org.greenrobot.greendao.b;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.f;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.identityscope.b;
import org.greenrobot.greendao.identityscope.c;

/* compiled from: DaoConfig */
public final class a implements Cloneable {
    public final org.greenrobot.greendao.a.a a;
    public final String b;
    public final f[] c;
    public final String[] d;
    public final String[] e;
    public final String[] f;
    public final f g;
    public final boolean h;
    public final e i;
    private org.greenrobot.greendao.identityscope.a<?, ?> j;

    public a(org.greenrobot.greendao.a.a aVar, Class<? extends org.greenrobot.greendao.a<?, ?>> cls) {
        boolean z;
        this.a = aVar;
        try {
            this.b = (String) cls.getField("TABLENAME").get(null);
            f[] a2 = a(cls);
            this.c = a2;
            this.d = new String[a2.length];
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            f fVar = null;
            while (i2 < a2.length) {
                f fVar2 = a2[i2];
                String str = fVar2.e;
                this.d[i2] = str;
                if (fVar2.d) {
                    arrayList.add(str);
                } else {
                    arrayList2.add(str);
                    fVar2 = fVar;
                }
                i2++;
                fVar = fVar2;
            }
            this.f = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            this.e = (String[]) arrayList.toArray(new String[arrayList.size()]);
            if (this.e.length != 1) {
                fVar = null;
            }
            this.g = fVar;
            this.i = new e(aVar, this.b, this.d, this.e);
            if (this.g != null) {
                Class<?> cls2 = this.g.b;
                if (cls2.equals(Long.TYPE) || cls2.equals(Long.class) || cls2.equals(Integer.TYPE) || cls2.equals(Integer.class) || cls2.equals(Short.TYPE) || cls2.equals(Short.class) || cls2.equals(Byte.TYPE) || cls2.equals(Byte.class)) {
                    z = true;
                } else {
                    z = false;
                }
                this.h = z;
                return;
            }
            this.h = false;
        } catch (Exception e2) {
            throw new DaoException("Could not init DAOConfig", e2);
        }
    }

    private static f[] a(Class<? extends org.greenrobot.greendao.a<?, ?>> cls) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException {
        Field[] declaredFields = Class.forName(cls.getName() + "$Properties").getDeclaredFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if ((field.getModifiers() & 9) == 9) {
                Object obj = field.get(null);
                if (obj instanceof f) {
                    arrayList.add((f) obj);
                }
            }
        }
        f[] fVarArr = new f[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            if (fVarArr[fVar.a] != null) {
                throw new DaoException("Duplicate property ordinals");
            }
            fVarArr[fVar.a] = fVar;
        }
        return fVarArr;
    }

    public a(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.i = aVar.i;
        this.h = aVar.h;
    }

    /* renamed from: a */
    public a clone() {
        return new a(this);
    }

    public org.greenrobot.greendao.identityscope.a<?, ?> b() {
        return this.j;
    }

    public void c() {
        org.greenrobot.greendao.identityscope.a<?, ?> aVar = this.j;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void a(IdentityScopeType identityScopeType) {
        if (identityScopeType == IdentityScopeType.None) {
            this.j = null;
        } else if (identityScopeType != IdentityScopeType.Session) {
            throw new IllegalArgumentException("Unsupported type: " + identityScopeType);
        } else if (this.h) {
            this.j = new b();
        } else {
            this.j = new c();
        }
    }
}
