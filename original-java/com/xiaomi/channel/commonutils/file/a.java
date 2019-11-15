package com.xiaomi.channel.commonutils.file;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.util.Date;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class a {
    public static final String[] a = {"jpg", "png", "bmp", "gif", "webp"};

    public static void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(File file, File file2) {
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2 = null;
        try {
            zipOutputStream = new ZipOutputStream(new FileOutputStream(file, false));
            try {
                a(zipOutputStream, file2, null, null);
                a((OutputStream) zipOutputStream);
            } catch (FileNotFoundException e) {
                a((OutputStream) zipOutputStream);
            } catch (IOException e2) {
                IOException iOException = e2;
                zipOutputStream2 = zipOutputStream;
                e = iOException;
                try {
                    b.a("zip file failure + " + e.getMessage());
                    a((OutputStream) zipOutputStream2);
                } catch (Throwable th) {
                    th = th;
                    a((OutputStream) zipOutputStream2);
                    throw th;
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                zipOutputStream2 = zipOutputStream;
                th = th3;
                a((OutputStream) zipOutputStream2);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            zipOutputStream = null;
            a((OutputStream) zipOutputStream);
        } catch (IOException e4) {
            e = e4;
            b.a("zip file failure + " + e.getMessage());
            a((OutputStream) zipOutputStream2);
        }
    }

    public static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(OutputStream outputStream) {
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

    public static void a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(Writer writer) {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(ZipOutputStream zipOutputStream, File file, String str, FileFilter fileFilter) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (str == null) {
            str = "";
        }
        try {
            if (file.isDirectory()) {
                File[] listFiles = fileFilter != null ? file.listFiles(fileFilter) : file.listFiles();
                zipOutputStream.putNextEntry(new ZipEntry(str + File.separator));
                String str2 = TextUtils.isEmpty(str) ? "" : str + File.separator;
                for (int i = 0; i < listFiles.length; i++) {
                    a(zipOutputStream, listFiles[i], str2 + listFiles[i].getName(), null);
                }
                File[] listFiles2 = file.listFiles(new b());
                if (listFiles2 != null) {
                    for (File file2 : listFiles2) {
                        a(zipOutputStream, file2, str2 + File.separator + file2.getName(), fileFilter);
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
                        b.d("zipFiction failed with exception:" + e.toString());
                        a((InputStream) fileInputStream2);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        a((InputStream) fileInputStream2);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    fileInputStream2 = fileInputStream;
                    th = th3;
                    a((InputStream) fileInputStream2);
                    throw th;
                }
            }
            a((InputStream) fileInputStream);
        } catch (IOException e2) {
            e = e2;
        }
    }

    public static boolean a(File file) {
        try {
            if (file.isDirectory()) {
                return false;
            }
            if (file.exists()) {
                return true;
            }
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                return file.createNewFile();
            }
            return false;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public static byte[] a(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.finish();
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Exception e) {
            return bArr;
        }
    }

    public static byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 8192);
                if (read <= 0) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
                return null;
            } finally {
                a(inputStream);
                a((OutputStream) byteArrayOutputStream);
            }
        }
    }
}
