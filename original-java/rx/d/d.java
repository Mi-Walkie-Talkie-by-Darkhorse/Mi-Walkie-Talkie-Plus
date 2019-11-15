package rx.d;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: RxJavaPlugins */
public class d {
    static final a a = new a() {
    };
    private static final d b = new d();
    private final AtomicReference<a> c = new AtomicReference<>();
    private final AtomicReference<b> d = new AtomicReference<>();
    private final AtomicReference<e> e = new AtomicReference<>();

    public static d a() {
        return b;
    }

    d() {
    }

    public a b() {
        if (this.c.get() == null) {
            Object a2 = a(a.class, System.getProperties());
            if (a2 == null) {
                this.c.compareAndSet(null, a);
            } else {
                this.c.compareAndSet(null, (a) a2);
            }
        }
        return (a) this.c.get();
    }

    public b c() {
        if (this.d.get() == null) {
            Object a2 = a(b.class, System.getProperties());
            if (a2 == null) {
                this.d.compareAndSet(null, c.a());
            } else {
                this.d.compareAndSet(null, (b) a2);
            }
        }
        return (b) this.d.get();
    }

    static Object a(Class<?> cls, Properties properties) {
        String simpleName = cls.getSimpleName();
        String str = "rxjava.plugin.";
        String property = properties.getProperty("rxjava.plugin." + simpleName + ".implementation");
        if (property == null) {
            String str2 = ".class";
            String str3 = ".impl";
            Iterator it = properties.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Entry entry = (Entry) it.next();
                String obj = entry.getKey().toString();
                if (obj.startsWith("rxjava.plugin.") && obj.endsWith(".class") && simpleName.equals(entry.getValue().toString())) {
                    String str4 = "rxjava.plugin." + obj.substring(0, obj.length() - ".class".length()).substring("rxjava.plugin.".length()) + ".impl";
                    String property2 = properties.getProperty(str4);
                    if (property2 == null) {
                        throw new RuntimeException("Implementing class declaration for " + simpleName + " missing: " + str4);
                    }
                    property = property2;
                }
            }
        }
        if (property == null) {
            return null;
        }
        try {
            return Class.forName(property).asSubclass(cls).newInstance();
        } catch (ClassCastException e2) {
            throw new RuntimeException(simpleName + " implementation is not an instance of " + simpleName + ": " + property);
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException(simpleName + " implementation class not found: " + property, e3);
        } catch (InstantiationException e4) {
            throw new RuntimeException(simpleName + " implementation not able to be instantiated: " + property, e4);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(simpleName + " implementation not able to be accessed: " + property, e5);
        }
    }

    public e d() {
        if (this.e.get() == null) {
            Object a2 = a(e.class, System.getProperties());
            if (a2 == null) {
                this.e.compareAndSet(null, e.d());
            } else {
                this.e.compareAndSet(null, (e) a2);
            }
        }
        return (e) this.e.get();
    }
}
