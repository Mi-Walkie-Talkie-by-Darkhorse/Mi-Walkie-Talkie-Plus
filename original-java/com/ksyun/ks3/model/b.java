package com.ksyun.ks3.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.StringTokenizer;

/* compiled from: Mimetypes */
public class b {
    private static b a = null;
    private HashMap<String, String> b = new HashMap<>();

    private b() {
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:15:0x0028=Splitter:B:15:0x0028, B:32:0x0049=Splitter:B:32:0x0049} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized com.ksyun.ks3.model.b a() {
        /*
            java.lang.Class<com.ksyun.ks3.model.b> r1 = com.ksyun.ks3.model.b.class
            monitor-enter(r1)
            com.ksyun.ks3.model.b r0 = a     // Catch:{ all -> 0x0034 }
            if (r0 == 0) goto L_0x000b
            com.ksyun.ks3.model.b r0 = a     // Catch:{ all -> 0x0034 }
        L_0x0009:
            monitor-exit(r1)
            return r0
        L_0x000b:
            com.ksyun.ks3.model.b r0 = new com.ksyun.ks3.model.b     // Catch:{ all -> 0x0034 }
            r0.<init>()     // Catch:{ all -> 0x0034 }
            a = r0     // Catch:{ all -> 0x0034 }
            com.ksyun.ks3.model.b r0 = a     // Catch:{ all -> 0x0034 }
            java.lang.Class r0 = r0.getClass()     // Catch:{ all -> 0x0034 }
            java.lang.String r2 = "/assets/mime.types"
            java.io.InputStream r2 = r0.getResourceAsStream(r2)     // Catch:{ all -> 0x0034 }
            if (r2 == 0) goto L_0x0053
            com.ksyun.ks3.model.b r0 = a     // Catch:{ IOException -> 0x0037, all -> 0x0045 }
            r0.a(r2)     // Catch:{ IOException -> 0x0037, all -> 0x0045 }
            r2.close()     // Catch:{ IOException -> 0x002b }
        L_0x0028:
            com.ksyun.ks3.model.b r0 = a     // Catch:{ all -> 0x0034 }
            goto L_0x0009
        L_0x002b:
            r0 = move-exception
            java.lang.String r0 = "ks3_sdk_android"
            java.lang.String r2 = "Failed to close inputstream"
            android.util.Log.d(r0, r2)     // Catch:{ all -> 0x0034 }
            goto L_0x0028
        L_0x0034:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        L_0x0037:
            r0 = move-exception
            r2.close()     // Catch:{ IOException -> 0x003c }
            goto L_0x0028
        L_0x003c:
            r0 = move-exception
            java.lang.String r0 = "ks3_sdk_android"
            java.lang.String r2 = "Failed to close inputstream"
            android.util.Log.d(r0, r2)     // Catch:{ all -> 0x0034 }
            goto L_0x0028
        L_0x0045:
            r0 = move-exception
            r2.close()     // Catch:{ IOException -> 0x004a }
        L_0x0049:
            throw r0     // Catch:{ all -> 0x0034 }
        L_0x004a:
            r2 = move-exception
            java.lang.String r2 = "ks3_sdk_android"
            java.lang.String r3 = "Failed to close inputstream"
            android.util.Log.d(r2, r3)     // Catch:{ all -> 0x0034 }
            goto L_0x0049
        L_0x0053:
            java.lang.String r0 = "ks3_sdk_android"
            java.lang.String r2 = "Unable to find 'mime.types' file in classpath"
            android.util.Log.w(r0, r2)     // Catch:{ all -> 0x0034 }
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.ks3.model.b.a():com.ksyun.ks3.model.b");
    }

    public void a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                String trim = readLine.trim();
                if (!trim.startsWith("#") && trim.length() != 0) {
                    StringTokenizer stringTokenizer = new StringTokenizer(trim, " \t");
                    if (stringTokenizer.countTokens() > 1) {
                        String nextToken = stringTokenizer.nextToken();
                        while (stringTokenizer.hasMoreTokens()) {
                            this.b.put(stringTokenizer.nextToken().toLowerCase(), nextToken);
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    public String a(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf > 0 && lastIndexOf + 1 < str.length()) {
            String lowerCase = str.substring(lastIndexOf + 1).toLowerCase();
            if (this.b.keySet().contains(lowerCase)) {
                return (String) this.b.get(lowerCase);
            }
        }
        return "application/octet-stream";
    }

    public String a(File file) {
        return a(file.getName());
    }
}
