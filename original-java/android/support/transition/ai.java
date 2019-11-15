package android.support.transition;

import android.animation.Animator;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.view.ViewGroup;

/* compiled from: Visibility */
public abstract class ai extends m implements al {
    ai(boolean z) {
        super(true);
        if (!z) {
            if (VERSION.SDK_INT >= 19) {
                this.a = new am();
            } else {
                this.a = new aj();
            }
            this.a.a((q) this);
        }
    }

    public void b(@NonNull ae aeVar) {
        this.a.b(aeVar);
    }

    public void a(@NonNull ae aeVar) {
        this.a.c(aeVar);
    }

    public boolean c(ae aeVar) {
        return ((ak) this.a).a(aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((ak) this.a).a(viewGroup, aeVar, i, aeVar2, i2);
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return ((ak) this.a).b(viewGroup, aeVar, i, aeVar2, i2);
    }
}
