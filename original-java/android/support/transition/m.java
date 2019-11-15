package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.ViewGroup;

/* compiled from: Transition */
public abstract class m implements q {
    p a;

    public m() {
        this(false);
    }

    m(boolean z) {
        if (!z) {
            if (VERSION.SDK_INT >= 23) {
                this.a = new n();
            } else if (VERSION.SDK_INT >= 19) {
                this.a = new s();
            } else {
                this.a = new o();
            }
            this.a.a((q) this);
        }
    }

    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @Nullable ae aeVar, @Nullable ae aeVar2) {
        return null;
    }

    @NonNull
    public m a(long j) {
        this.a.a(j);
        return this;
    }

    @NonNull
    public m a(@Nullable TimeInterpolator timeInterpolator) {
        this.a.a(timeInterpolator);
        return this;
    }

    public String toString() {
        return this.a.toString();
    }
}
