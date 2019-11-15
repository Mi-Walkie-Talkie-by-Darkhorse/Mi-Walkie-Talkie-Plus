package com.liulishuo.filedownloader.a;

import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.List;
import java.util.Map;

/* compiled from: FileDownloadConnection */
public interface b {
    InputStream a() throws IOException;

    String a(String str);

    void a(String str, String str2);

    boolean a(String str, long j);

    Map<String, List<String>> b();

    boolean b(String str) throws ProtocolException;

    Map<String, List<String>> c();

    void d() throws IOException;

    int e() throws IOException;

    void f();
}
