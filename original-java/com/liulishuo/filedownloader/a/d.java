package com.liulishuo.filedownloader.a;

import com.liulishuo.filedownloader.download.c;
import com.liulishuo.filedownloader.e.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

/* compiled from: RedirectHandler */
public class d {
    public static b a(Map<String, List<String>> map, b bVar, List<String> list) throws IOException, IllegalAccessException {
        int e = bVar.e();
        String a = bVar.a(Names.LOCATION);
        ArrayList arrayList = new ArrayList();
        int i = e;
        String str = a;
        int i2 = 0;
        while (a(i)) {
            if (str == null) {
                throw new IllegalAccessException(g.a("receive %d (redirect) but the location is null with response [%s]", Integer.valueOf(i), bVar.c()));
            }
            if (com.liulishuo.filedownloader.e.d.a) {
                com.liulishuo.filedownloader.e.d.c(d.class, "redirect to %s with %d, %s", str, Integer.valueOf(i), arrayList);
            }
            bVar.f();
            bVar = a(map, str);
            arrayList.add(str);
            bVar.d();
            i = bVar.e();
            str = bVar.a(Names.LOCATION);
            i2++;
            if (i2 >= 10) {
                throw new IllegalAccessException(g.a("redirect too many times! %s", arrayList));
            }
        }
        if (list != null) {
            list.addAll(arrayList);
        }
        return bVar;
    }

    private static boolean a(int i) {
        return i == 301 || i == 302 || i == 303 || i == 300 || i == 307 || i == 308;
    }

    private static b a(Map<String, List<String>> map, String str) throws IOException {
        b a = c.a().a(str);
        for (Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            List<String> list = (List) entry.getValue();
            if (list != null) {
                for (String a2 : list) {
                    a.a(str2, a2);
                }
            }
        }
        return a;
    }
}
