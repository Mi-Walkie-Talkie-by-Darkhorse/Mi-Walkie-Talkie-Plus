package com.mi.mimsgsdk.upload;

import java.util.HashMap;

public class FileUtils {
    private static final HashMap<String, String> mFileTypes = new HashMap<>();

    static {
        mFileTypes.put("FFD8FF", "jpg");
        mFileTypes.put("89504E47", "png");
        mFileTypes.put("47494638", "gif");
        mFileTypes.put("474946", "gif");
        mFileTypes.put("424D", "bmp");
    }

    public static String getFileType(String str) {
        return (String) mFileTypes.get(getFileHeader(str));
    }

    /* JADX WARNING: type inference failed for: r1v0, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r1v4, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0028 A[SYNTHETIC, Splitter:B:19:0x0028] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String getFileHeader(java.lang.String r6) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ Exception -> 0x0018, all -> 0x0022 }
            r1.<init>(r6)     // Catch:{ Exception -> 0x0018, all -> 0x0022 }
            r2 = 3
            byte[] r2 = new byte[r2]     // Catch:{ Exception -> 0x0032, all -> 0x0030 }
            r3 = 0
            int r4 = r2.length     // Catch:{ Exception -> 0x0032, all -> 0x0030 }
            r1.read(r2, r3, r4)     // Catch:{ Exception -> 0x0032, all -> 0x0030 }
            java.lang.String r0 = bytesToHexString(r2)     // Catch:{ Exception -> 0x0032, all -> 0x0030 }
            if (r1 == 0) goto L_0x0017
            r1.close()     // Catch:{ IOException -> 0x002c }
        L_0x0017:
            return r0
        L_0x0018:
            r1 = move-exception
            r1 = r0
        L_0x001a:
            if (r1 == 0) goto L_0x0017
            r1.close()     // Catch:{ IOException -> 0x0020 }
            goto L_0x0017
        L_0x0020:
            r1 = move-exception
            goto L_0x0017
        L_0x0022:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x0026:
            if (r1 == 0) goto L_0x002b
            r1.close()     // Catch:{ IOException -> 0x002e }
        L_0x002b:
            throw r0
        L_0x002c:
            r1 = move-exception
            goto L_0x0017
        L_0x002e:
            r1 = move-exception
            goto L_0x002b
        L_0x0030:
            r0 = move-exception
            goto L_0x0026
        L_0x0032:
            r2 = move-exception
            goto L_0x001a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.upload.FileUtils.getFileHeader(java.lang.String):java.lang.String");
    }

    private static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String upperCase = Integer.toHexString(b & 255).toUpperCase();
            if (upperCase.length() < 2) {
                sb.append(0);
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }
}
