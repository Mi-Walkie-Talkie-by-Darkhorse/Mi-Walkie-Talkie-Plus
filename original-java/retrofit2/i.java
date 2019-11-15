package retrofit2;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles.Lookup;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: Platform */
class i {
    private static final i a = c();

    /* compiled from: Platform */
    static class a extends i {

        /* renamed from: retrofit2.i$a$a reason: collision with other inner class name */
        /* compiled from: Platform */
        static class C0097a implements Executor {
            private final Handler a = new Handler(Looper.getMainLooper());

            C0097a() {
            }

            public void execute(Runnable runnable) {
                this.a.post(runnable);
            }
        }

        a() {
        }

        public Executor b() {
            return new C0097a();
        }

        /* access modifiers changed from: 0000 */
        public retrofit2.c.a a(@Nullable Executor executor) {
            if (executor != null) {
                return new f(executor);
            }
            throw new AssertionError();
        }
    }

    @IgnoreJRERequirement
    /* compiled from: Platform */
    static class b extends i {
        b() {
        }

        /* access modifiers changed from: 0000 */
        public boolean a(Method method) {
            return method.isDefault();
        }

        /* access modifiers changed from: 0000 */
        public Object a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
            Constructor declaredConstructor = Lookup.class.getDeclaredConstructor(new Class[]{Class.class, Integer.TYPE});
            declaredConstructor.setAccessible(true);
            return ((Lookup) declaredConstructor.newInstance(new Object[]{cls, Integer.valueOf(-1)})).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }
    }

    i() {
    }

    static i a() {
        return a;
    }

    private static i c() {
        try {
            Class.forName("android.os.Build");
            if (VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException e) {
        }
        try {
            Class.forName("java.util.Optional");
            return new b();
        } catch (ClassNotFoundException e2) {
            return new i();
        }
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public Executor b() {
        return null;
    }

    /* access modifiers changed from: 0000 */
    public retrofit2.c.a a(@Nullable Executor executor) {
        if (executor != null) {
            return new f(executor);
        }
        return e.a;
    }

    /* access modifiers changed from: 0000 */
    public boolean a(Method method) {
        return false;
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public Object a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }
}
