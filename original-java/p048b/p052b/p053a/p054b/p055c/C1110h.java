package p048b.p052b.p053a.p054b.p055c;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

/* renamed from: b.b.a.b.c.h */
/* loaded from: classes.dex */
public final class C1110h {
    /* renamed from: a */
    public static String m21171a(InputStream inputStream, String str) throws UnsupportedEncodingException, IOException {
        StringWriter stringWriter = new StringWriter();
        m21170b(new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: b */
    public static void m21170b(Reader reader, Writer writer) throws IOException {
        m21169c(reader, writer, new char[4096]);
    }

    /* renamed from: c */
    public static void m21169c(Reader reader, Writer writer, char[] cArr) throws IOException {
        while (true) {
            int read = reader.read(cArr);
            if (-1 == read) {
                return;
            }
            writer.write(cArr, 0, read);
        }
    }
}
