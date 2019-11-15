package com.ifengyu.im.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Environment;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.UUID;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;

public class FileUtil {
    public static String SDCardRoot = (Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator);
    public static File updateFile;

    public static File createFileInSDCard(String str, String str2) {
        File file = new File(SDCardRoot + str2 + File.separator + str);
        try {
            file.createNewFile();
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
        }
        updateFile = file;
        return file;
    }

    public static File creatSDDir(String str) {
        File file = new File(SDCardRoot + str + File.separator);
        file.mkdirs();
        return file;
    }

    public static boolean isFileExist(String str, String str2) {
        return new File(SDCardRoot + str2 + File.separator + str).exists();
    }

    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0034, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0035, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0046, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0047, code lost:
        r2 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0034 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0001] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.io.File writeToSDFromInput(java.lang.String r5, java.lang.String r6, java.io.InputStream r7) {
        /*
            r3 = 0
            java.io.File r0 = createFileInSDCard(r6, r5)     // Catch:{ Exception -> 0x0041, all -> 0x0034 }
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0046, all -> 0x0034 }
            r1 = 0
            r2.<init>(r0, r1)     // Catch:{ Exception -> 0x0046, all -> 0x0034 }
            r1 = 4096(0x1000, float:5.74E-42)
            byte[] r1 = new byte[r1]     // Catch:{ Exception -> 0x001b }
        L_0x000f:
            int r3 = r7.read(r1)     // Catch:{ Exception -> 0x001b }
            r4 = -1
            if (r3 == r4) goto L_0x0023
            r4 = 0
            r2.write(r1, r4, r3)     // Catch:{ Exception -> 0x001b }
            goto L_0x000f
        L_0x001b:
            r1 = move-exception
        L_0x001c:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x003f }
            r2.close()     // Catch:{ Exception -> 0x002f }
        L_0x0022:
            return r0
        L_0x0023:
            r2.flush()     // Catch:{ Exception -> 0x001b }
            r2.close()     // Catch:{ Exception -> 0x002a }
            goto L_0x0022
        L_0x002a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0022
        L_0x002f:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0022
        L_0x0034:
            r0 = move-exception
            r2 = r3
        L_0x0036:
            r2.close()     // Catch:{ Exception -> 0x003a }
        L_0x0039:
            throw r0
        L_0x003a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0039
        L_0x003f:
            r0 = move-exception
            goto L_0x0036
        L_0x0041:
            r0 = move-exception
            r1 = r0
            r2 = r3
            r0 = r3
            goto L_0x001c
        L_0x0046:
            r1 = move-exception
            r2 = r3
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.utils.FileUtil.writeToSDFromInput(java.lang.String, java.lang.String, java.io.InputStream):java.io.File");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0022, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0023, code lost:
        r1 = r0;
        r2 = null;
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0032, code lost:
        r0 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0032 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0001] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.io.File writeToSDFromInput(java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = 0
            creatSDDir(r4)     // Catch:{ Exception -> 0x0022, all -> 0x0032 }
            java.io.File r0 = createFileInSDCard(r5, r4)     // Catch:{ Exception -> 0x0022, all -> 0x0032 }
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x003f, all -> 0x0032 }
            r2 = 0
            r1.<init>(r0, r2)     // Catch:{ Exception -> 0x003f, all -> 0x0032 }
            java.io.OutputStreamWriter r2 = new java.io.OutputStreamWriter     // Catch:{ Exception -> 0x003f, all -> 0x0032 }
            r2.<init>(r1)     // Catch:{ Exception -> 0x003f, all -> 0x0032 }
            r2.write(r6)     // Catch:{ Exception -> 0x0042 }
            r2.flush()     // Catch:{ Exception -> 0x0042 }
            r2.close()     // Catch:{ Exception -> 0x001d }
        L_0x001c:
            return r0
        L_0x001d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001c
        L_0x0022:
            r0 = move-exception
            r1 = r0
            r2 = r3
            r0 = r3
        L_0x0026:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x003c }
            r2.close()     // Catch:{ Exception -> 0x002d }
            goto L_0x001c
        L_0x002d:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001c
        L_0x0032:
            r0 = move-exception
        L_0x0033:
            r3.close()     // Catch:{ Exception -> 0x0037 }
        L_0x0036:
            throw r0
        L_0x0037:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0036
        L_0x003c:
            r0 = move-exception
            r3 = r2
            goto L_0x0033
        L_0x003f:
            r1 = move-exception
            r2 = r3
            goto L_0x0026
        L_0x0042:
            r1 = move-exception
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.utils.FileUtil.writeToSDFromInput(java.lang.String, java.lang.String, java.lang.String):java.io.File");
    }

    public static String getFromCipherConnection(String str, String str2, String str3) {
        try {
            File[] fileArr = {new File(str3)};
            String uuid = UUID.randomUUID().toString();
            String str4 = "--";
            String str5 = "\r\n";
            String str6 = Values.MULTIPART_FORM_DATA;
            String str7 = "UTF-8";
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("connection", "keep-alive");
            httpURLConnection.setRequestProperty("Charsert", "UTF-8");
            httpURLConnection.setRequestProperty("Content-Type", str6 + ";boundary=" + uuid);
            StringBuilder sb = new StringBuilder();
            sb.append(str4);
            sb.append(uuid);
            sb.append(str5);
            sb.append("Content-Disposition: form-data; name=\"userName\"" + str5);
            sb.append("Content-Type: text/plain; charset=" + str7 + str5);
            sb.append("Content-Transfer-Encoding: 8bit" + str5);
            sb.append(str5);
            sb.append(str2);
            sb.append(str5);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(sb.toString().getBytes());
            if (fileArr != null) {
                for (File file : fileArr) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(uuid);
                    sb2.append(str5);
                    sb2.append("Content-Disposition: form-data; name=\"" + file.getName() + "\"; filename=\"" + file.getName() + "\"" + str5);
                    sb2.append("Content-Type: application/octet-stream; charset=" + str7 + str5);
                    sb2.append(str5);
                    dataOutputStream.write(sb2.toString().getBytes());
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            dataOutputStream.write(bArr, 0, read);
                        }
                        fileInputStream.close();
                        dataOutputStream.write(str5.getBytes());
                    } catch (IOException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }
            dataOutputStream.write((str4 + uuid + str4 + str5).getBytes());
            dataOutputStream.flush();
            dataOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                return "";
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb3 = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb3.append(readLine);
                } else {
                    bufferedReader.close();
                    httpURLConnection.disconnect();
                    return "true";
                }
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0021 A[SYNTHETIC, Splitter:B:15:0x0021] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x002f A[SYNTHETIC, Splitter:B:23:0x002f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] getFileContent(java.lang.String r3) {
        /*
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Exception -> 0x001a, all -> 0x002b }
            r2.<init>(r3)     // Catch:{ Exception -> 0x001a, all -> 0x002b }
            int r0 = r2.available()     // Catch:{ Exception -> 0x003a }
            byte[] r0 = new byte[r0]     // Catch:{ Exception -> 0x003a }
            r2.read(r0)     // Catch:{ Exception -> 0x003a }
            if (r2 == 0) goto L_0x0014
            r2.close()     // Catch:{ IOException -> 0x0015 }
        L_0x0014:
            return r0
        L_0x0015:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0014
        L_0x001a:
            r0 = move-exception
            r2 = r1
        L_0x001c:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0038 }
            if (r2 == 0) goto L_0x0024
            r2.close()     // Catch:{ IOException -> 0x0026 }
        L_0x0024:
            r0 = r1
            goto L_0x0014
        L_0x0026:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0024
        L_0x002b:
            r0 = move-exception
            r2 = r1
        L_0x002d:
            if (r2 == 0) goto L_0x0032
            r2.close()     // Catch:{ IOException -> 0x0033 }
        L_0x0032:
            throw r0
        L_0x0033:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0032
        L_0x0038:
            r0 = move-exception
            goto L_0x002d
        L_0x003a:
            r0 = move-exception
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.utils.FileUtil.getFileContent(java.lang.String):byte[]");
    }

    public static void delete(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null || listFiles.length == 0) {
                    file.delete();
                    return;
                }
                for (File delete : listFiles) {
                    delete(delete);
                }
                file.delete();
            }
        }
    }

    public static void deleteHistoryFiles(File file, long j) {
        if (file.exists() && !file.isFile()) {
            try {
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null && listFiles.length != 0) {
                        for (int i = 0; i < listFiles.length; i++) {
                            if (Long.valueOf(listFiles[i].lastModified()).longValue() < j) {
                                delete(listFiles[i]);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    public static File save2File(String str, String str2, String str3) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.mkdir();
            }
            File file2 = new File(file, str2);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(str3.toString().getBytes());
            fileOutputStream.close();
            return file2;
        } catch (FileNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return null;
        }
    }

    public static String saveAudioResourceToFile(byte[] bArr, int i) {
        try {
            String audioSavePath = CommonUtil.getAudioSavePath(i);
            FileOutputStream fileOutputStream = new FileOutputStream(new File(audioSavePath));
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.close();
            return audioSavePath;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public static String saveGifResourceToFile(byte[] bArr) {
        try {
            String savePath = CommonUtil.getSavePath(19);
            FileOutputStream fileOutputStream = new FileOutputStream(new File(savePath));
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.close();
            return savePath;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    private static Bitmap getBitmap(InputStream inputStream) {
        Options options = new Options();
        options.inSampleSize = 1;
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
        if (decodeStream != null) {
            return Bitmap.createScaledBitmap(decodeStream, decodeStream.getWidth(), decodeStream.getHeight(), true);
        }
        return decodeStream;
    }

    public static long getFileLen(File file) {
        long j = 0;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                j += (long) read;
            }
            fileInputStream.close();
        } catch (Exception e) {
        }
        return j;
    }

    public static boolean isSdCardAvailuable() {
        if (Environment.getExternalStorageState().equals("mounted") && CommonUtil.getSDFreeSize() >= 5) {
            return true;
        }
        return false;
    }

    public static byte[] InputStreamToByte(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read();
            if (read != -1) {
                byteArrayOutputStream.write(read);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
        }
    }

    public static byte[] File2byte(String str) {
        boolean z = false;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (FileNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            return z;
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            return z;
        }
    }

    public static String getExtensionName(String str) {
        if (str == null || str.length() <= 0) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf <= -1 || lastIndexOf >= str.length() - 1) {
            return str;
        }
        return str.substring(lastIndexOf + 1);
    }
}
