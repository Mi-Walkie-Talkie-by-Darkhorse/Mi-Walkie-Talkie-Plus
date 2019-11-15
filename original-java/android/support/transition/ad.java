package android.support.transition;

import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.transition.y.b;
import android.support.transition.y.c;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: TransitionSetPort */
class ad extends y {
    ArrayList<y> a = new ArrayList<>();
    int b;
    boolean c = false;
    private boolean w = true;

    /* compiled from: TransitionSetPort */
    static class a extends c {
        ad a;

        a(ad adVar) {
            this.a = adVar;
        }

        public void d(y yVar) {
            if (!this.a.c) {
                this.a.f();
                this.a.c = true;
            }
        }

        public void a(y yVar) {
            this.a.b--;
            if (this.a.b == 0) {
                this.a.c = false;
                this.a.g();
            }
            yVar.b((b) this);
        }
    }

    public ad a(int i) {
        switch (i) {
            case 0:
                this.w = true;
                break;
            case 1:
                this.w = false;
                break;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
        return this;
    }

    public ad a(y yVar) {
        if (yVar != null) {
            this.a.add(yVar);
            yVar.o = this;
            if (this.e >= 0) {
                yVar.a(this.e);
            }
        }
        return this;
    }

    /* renamed from: b */
    public ad a(long j) {
        super.a(j);
        if (this.e >= 0) {
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                ((y) this.a.get(i)).a(j);
            }
        }
        return this;
    }

    /* renamed from: b */
    public ad a(TimeInterpolator timeInterpolator) {
        return (ad) super.a(timeInterpolator);
    }

    /* renamed from: c */
    public ad a(b bVar) {
        return (ad) super.a(bVar);
    }

    /* renamed from: d */
    public ad b(b bVar) {
        return (ad) super.b(bVar);
    }

    private void k() {
        a aVar = new a(this);
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((y) it.next()).a((b) aVar);
        }
        this.b = this.a.size();
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void a(ViewGroup viewGroup, af afVar, af afVar2) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((y) it.next()).a(viewGroup, afVar, afVar2);
        }
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void e() {
        if (this.a.isEmpty()) {
            f();
            g();
            return;
        }
        k();
        if (!this.w) {
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= this.a.size()) {
                    break;
                }
                final y yVar = (y) this.a.get(i2);
                ((y) this.a.get(i2 - 1)).a((b) new c() {
                    public void a(y yVar) {
                        yVar.e();
                        yVar.b((b) this);
                    }
                });
                i = i2 + 1;
            }
            y yVar2 = (y) this.a.get(0);
            if (yVar2 != null) {
                yVar2.e();
                return;
            }
            return;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((y) it.next()).e();
        }
    }

    public void a(ae aeVar) {
        int id = aeVar.b.getId();
        if (a(aeVar.b, (long) id)) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                y yVar = (y) it.next();
                if (yVar.a(aeVar.b, (long) id)) {
                    yVar.a(aeVar);
                }
            }
        }
    }

    public void b(ae aeVar) {
        int id = aeVar.b.getId();
        if (a(aeVar.b, (long) id)) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                y yVar = (y) it.next();
                if (yVar.a(aeVar.b, (long) id)) {
                    yVar.b(aeVar);
                }
            }
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void a(View view) {
        super.a(view);
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            ((y) this.a.get(i)).a(view);
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void b(View view) {
        super.b(view);
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            ((y) this.a.get(i)).b(view);
        }
    }

    /* access modifiers changed from: 0000 */
    public String a(String str) {
        String a2 = super.a(str);
        int i = 0;
        while (i < this.a.size()) {
            String str2 = a2 + "\n" + ((y) this.a.get(i)).a(str + "  ");
            i++;
            a2 = str2;
        }
        return a2;
    }

    /* renamed from: j */
    public ad h() {
        ad adVar = (ad) super.clone();
        adVar.a = new ArrayList<>();
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            adVar.a(((y) this.a.get(i)).clone());
        }
        return adVar;
    }
}
