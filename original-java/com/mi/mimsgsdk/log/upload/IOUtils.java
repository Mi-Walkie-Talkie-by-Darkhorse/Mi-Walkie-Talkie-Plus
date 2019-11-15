package com.mi.mimsgsdk.log.upload;

import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class IOUtils {
    private static final int BUFFER_SIZE = 1024;

    public static void zip(ZipOutputStream zipOutputStream, File file, String str, FileFilter fileFilter) throws IOException {
        FileInputStream fileInputStream;
        File[] listFiles;
        FileInputStream fileInputStream2 = null;
        if (str == null) {
            str = "";
        }
        try {
            if (file.isDirectory()) {
                if (fileFilter != null) {
                    listFiles = file.listFiles(fileFilter);
                } else {
                    listFiles = file.listFiles();
                }
                zipOutputStream.putNextEntry(new ZipEntry(str + File.separator));
                String str2 = TextUtils.isEmpty(str) ? "" : str + File.separator;
                for (int i = 0; i < listFiles.length; i++) {
                    zip(zipOutputStream, listFiles[i], str2 + listFiles[i].getName(), null);
                }
                File[] listFiles2 = file.listFiles(new FileFilter() {
                    public boolean accept(File file) {
                        return file.isDirectory();
                    }
                });
                if (listFiles2 != null) {
                    for (File file2 : listFiles2) {
                        zip(zipOutputStream, file2, str2 + File.separator + file2.getName(), fileFilter);
                    }
                }
                fileInputStream = null;
            } else {
                if (!TextUtils.isEmpty(str)) {
                    zipOutputStream.putNextEntry(new ZipEntry(str));
                } else {
                    zipOutputStream.putNextEntry(new ZipEntry(String.valueOf(new Date().getTime()) + ".txt"));
                }
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        zipOutputStream.write(bArr, 0, read);
                    }
                } catch (IOException e) {
                    IOException iOException = e;
                    fileInputStream2 = fileInputStream;
                    e = iOException;
                    try {
                        ClientLog.e("zipFiction failed with exception", e.getMessage());
                        closeQuietly((InputStream) fileInputStream2);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        closeQuietly((InputStream) fileInputStream2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    fileInputStream2 = fileInputStream;
                    th = th3;
                    closeQuietly((InputStream) fileInputStream2);
                    throw th;
                }
            }
            closeQuietly((InputStream) fileInputStream);
        } catch (IOException e2) {
            e = e2;
        }
    }

    public static void closeQuietly(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.flush();
            } catch (IOException e) {
            }
            try {
                outputStream.close();
            } catch (IOException e2) {
            }
        }
    }
}
