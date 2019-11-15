package org.apache.thrift.meta_data;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.apache.thrift.a;

public class b implements Serializable {
    private static Map<Class<? extends a>, Map<?, b>> d = new HashMap();
    public final String a;
    public final byte b;
    public final c c;

    public b(String str, byte b2, c cVar) {
        this.a = str;
        this.b = b2;
        this.c = cVar;
    }

    public static void a(Class<? extends a> cls, Map<?, b> map) {
        d.put(cls, map);
    }
}
