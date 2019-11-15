package com.mi.milinkforgame.sdk.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

public class FileUtils {
    public static final int CPY_BUFFER_SIZE = 4096;
    public static final int ZIP_BUFFER_SIZE = 4096;
    public static final String ZIP_FILE_EXT = ".zip";

    public static boolean copyFile(File file, File file2) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5 = 0;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (-1 != read) {
                            bufferedOutputStream.write(bArr, 0, read);
                        } else {
                            bufferedOutputStream.flush();
                            CommonUtils.closeDataObject(bufferedOutputStream);
                            CommonUtils.closeDataObject(fileInputStream);
                            return true;
                        }
                    }
                } catch (IOException e) {
                    obj4 = fileInputStream;
                    obj = bufferedOutputStream;
                    CommonUtils.closeDataObject(obj);
                    CommonUtils.closeDataObject(obj4);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    obj3 = bufferedOutputStream;
                    obj2 = fileInputStream;
                    CommonUtils.closeDataObject(obj3);
                    CommonUtils.closeDataObject(obj2);
                    throw th;
                }
            } catch (IOException e2) {
                obj = 0;
                obj4 = fileInputStream;
                CommonUtils.closeDataObject(obj);
                CommonUtils.closeDataObject(obj4);
                return false;
            } catch (Throwable th2) {
                th = th2;
                obj3 = obj5;
                obj2 = fileInputStream;
                CommonUtils.closeDataObject(obj3);
                CommonUtils.closeDataObject(obj2);
                throw th;
            }
        } catch (IOException e3) {
            obj = 0;
            obj4 = obj5;
            CommonUtils.closeDataObject(obj);
            CommonUtils.closeDataObject(obj4);
            return false;
        } catch (Throwable th3) {
            th = th3;
            obj2 = 0;
            obj3 = obj5;
            CommonUtils.closeDataObject(obj3);
            CommonUtils.closeDataObject(obj2);
            throw th;
        }
    }

    public static boolean deleteFile(File file) {
        if (file == null) {
            return false;
        }
        if (file.isFile()) {
            if (file.delete()) {
                return true;
            }
            file.deleteOnExit();
            return false;
        } else if (!file.isDirectory()) {
            return false;
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File deleteFile : listFiles) {
                    deleteFile(deleteFile);
                }
            }
            return file.delete();
        }
    }

    public static boolean zip(File[] fileArr, File file) {
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2 = null;
        if (fileArr == null || fileArr.length < 1 || file == null) {
            return false;
        }
        try {
            byte[] bArr = new byte[4096];
            ZipOutputStream zipOutputStream3 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file, false)));
            try {
                for (File doZip : fileArr) {
                    doZip(zipOutputStream3, doZip, null, bArr);
                }
                zipOutputStream3.flush();
                zipOutputStream3.closeEntry();
                CommonUtils.closeDataObject(zipOutputStream3);
                return true;
            } catch (IOException e) {
                zipOutputStream = zipOutputStream3;
                CommonUtils.closeDataObject(zipOutputStream);
                return false;
            } catch (Throwable th) {
                th = th;
                zipOutputStream2 = zipOutputStream3;
                CommonUtils.closeDataObject(zipOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
            zipOutputStream = null;
            CommonUtils.closeDataObject(zipOutputStream);
            return false;
        } catch (Throwable th2) {
            th = th2;
            CommonUtils.closeDataObject(zipOutputStream2);
            throw th;
        }
    }

    public static boolean zip(File file, File file2) {
        return zip(new File[]{file}, file2);
    }

    public static boolean unzip(File file, File file2) {
        ZipInputStream zipInputStream;
        ZipInputStream zipInputStream2;
        BufferedOutputStream bufferedOutputStream = null;
        if (file == null || file.length() < 1 || !file.canRead()) {
            return false;
        }
        if (!file2.exists()) {
            file2.mkdirs();
        }
        byte[] bArr = new byte[8192];
        try {
            zipInputStream2 = new ZipInputStream(new FileInputStream(file));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream2.getNextEntry();
                    if (nextEntry != null) {
                        System.out.println(nextEntry.getName());
                        if (nextEntry.isDirectory()) {
                            new File(file2, nextEntry.getName()).mkdirs();
                        } else {
                            File file3 = new File(file2, nextEntry.getName());
                            file3.getParentFile().mkdirs();
                            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file3));
                            while (true) {
                                try {
                                    int read = zipInputStream2.read(bArr, 0, bArr.length);
                                    if (-1 == read) {
                                        break;
                                    }
                                    bufferedOutputStream2.write(bArr, 0, read);
                                } catch (IOException e) {
                                    bufferedOutputStream = bufferedOutputStream2;
                                    zipInputStream = zipInputStream2;
                                    CommonUtils.closeDataObject(bufferedOutputStream);
                                    CommonUtils.closeDataObject(zipInputStream);
                                    return false;
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    CommonUtils.closeDataObject(bufferedOutputStream);
                                    CommonUtils.closeDataObject(zipInputStream2);
                                    throw th;
                                }
                            }
                            bufferedOutputStream2.flush();
                            bufferedOutputStream2.close();
                            bufferedOutputStream = bufferedOutputStream2;
                        }
                    } else {
                        zipInputStream2.closeEntry();
                        zipInputStream2.close();
                        CommonUtils.closeDataObject(bufferedOutputStream);
                        CommonUtils.closeDataObject(zipInputStream2);
                        return true;
                    }
                } catch (IOException e2) {
                    zipInputStream = zipInputStream2;
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(zipInputStream);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(zipInputStream2);
                    throw th;
                }
            }
        } catch (IOException e3) {
            zipInputStream = null;
            CommonUtils.closeDataObject(bufferedOutputStream);
            CommonUtils.closeDataObject(zipInputStream);
            return false;
        } catch (Throwable th3) {
            th = th3;
            zipInputStream2 = null;
            CommonUtils.closeDataObject(bufferedOutputStream);
            CommonUtils.closeDataObject(zipInputStream2);
            throw th;
        }
    }

    public static void doZip(ZipOutputStream zipOutputStream, File file, String str, byte[] bArr) throws IOException {
        String str2;
        BufferedInputStream bufferedInputStream;
        if (zipOutputStream == null || file == null) {
            throw new IOException("I/O Object got NullPointerException");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Target File is missing");
        } else {
            if (CommonUtils.isTextEmpty(str)) {
                str2 = file.getName();
            } else {
                str2 = str + File.separator + file.getName();
            }
            if (file.isFile()) {
                try {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    try {
                        zipOutputStream.putNextEntry(new ZipEntry(str2));
                        while (true) {
                            int read = bufferedInputStream.read(bArr, 0, bArr.length);
                            if (-1 != read) {
                                zipOutputStream.write(bArr, 0, read);
                            } else {
                                CommonUtils.closeDataObject(bufferedInputStream);
                                return;
                            }
                        }
                    } catch (IOException e) {
                        e = e;
                    }
                } catch (IOException e2) {
                    e = e2;
                    bufferedInputStream = null;
                    CommonUtils.closeDataObject(bufferedInputStream);
                    throw e;
                }
            } else if (file.isDirectory()) {
                for (File doZip : file.listFiles()) {
                    doZip(zipOutputStream, doZip, str2, bArr);
                }
            }
        }
    }

    public static boolean unjar(File file, File file2) {
        JarInputStream jarInputStream;
        JarInputStream jarInputStream2;
        BufferedOutputStream bufferedOutputStream = null;
        if (file == null || file.length() < 1 || !file.canRead()) {
            return false;
        }
        if (!file2.exists()) {
            file2.mkdirs();
        }
        byte[] bArr = new byte[8192];
        try {
            jarInputStream2 = new JarInputStream(new FileInputStream(file));
            while (true) {
                try {
                    JarEntry nextJarEntry = jarInputStream2.getNextJarEntry();
                    if (nextJarEntry != null) {
                        System.out.println(nextJarEntry.getName());
                        if (nextJarEntry.isDirectory()) {
                            new File(file2, nextJarEntry.getName()).mkdirs();
                        } else {
                            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(new File(file2, nextJarEntry.getName())));
                            while (true) {
                                try {
                                    int read = jarInputStream2.read(bArr, 0, bArr.length);
                                    if (-1 == read) {
                                        break;
                                    }
                                    bufferedOutputStream2.write(bArr, 0, read);
                                } catch (IOException e) {
                                    bufferedOutputStream = bufferedOutputStream2;
                                    jarInputStream = jarInputStream2;
                                    CommonUtils.closeDataObject(bufferedOutputStream);
                                    CommonUtils.closeDataObject(jarInputStream);
                                    return false;
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    CommonUtils.closeDataObject(bufferedOutputStream);
                                    CommonUtils.closeDataObject(jarInputStream2);
                                    throw th;
                                }
                            }
                            bufferedOutputStream2.flush();
                            bufferedOutputStream2.close();
                            bufferedOutputStream = bufferedOutputStream2;
                        }
                    } else {
                        jarInputStream2.closeEntry();
                        jarInputStream2.close();
                        CommonUtils.closeDataObject(bufferedOutputStream);
                        CommonUtils.closeDataObject(jarInputStream2);
                        return true;
                    }
                } catch (IOException e2) {
                    jarInputStream = jarInputStream2;
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(jarInputStream);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(jarInputStream2);
                    throw th;
                }
            }
        } catch (IOException e3) {
            jarInputStream = null;
            CommonUtils.closeDataObject(bufferedOutputStream);
            CommonUtils.closeDataObject(jarInputStream);
            return false;
        } catch (Throwable th3) {
            th = th3;
            jarInputStream2 = null;
            CommonUtils.closeDataObject(bufferedOutputStream);
            CommonUtils.closeDataObject(jarInputStream2);
            throw th;
        }
    }

    public static void saveBytes2File(File file, byte[] bArr) throws Exception {
        if (file == null) {
            throw new NullPointerException("file is null ");
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        if (!file.canWrite()) {
            throw new IOException("file " + file.getAbsolutePath() + " is not writeable");
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
        } finally {
            CommonUtils.closeDataObject(fileOutputStream);
        }
    }

    public static byte[] readBytesFromFile(File file) throws Exception {
        if (file == null) {
            throw new NullPointerException("file is null ");
        } else if (!file.exists()) {
            throw new FileNotFoundException("file " + file.getAbsolutePath() + " is not exist");
        } else if (!file.canRead()) {
            throw new IOException("file " + file.getAbsolutePath() + " is not readable");
        } else {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[512];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } finally {
                    CommonUtils.closeDataObject(fileInputStream);
                    CommonUtils.closeDataObject(byteArrayOutputStream);
                }
            }
        }
    }

    public static void writeToFile(File file, String str) throws IOException {
        BufferedWriter bufferedWriter;
        if (file != null && str != null) {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file));
                try {
                    bufferedWriter.write(str);
                    CommonUtils.closeDataObject(bufferedWriter);
                } catch (Throwable th) {
                    th = th;
                    CommonUtils.closeDataObject(bufferedWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = null;
                CommonUtils.closeDataObject(bufferedWriter);
                throw th;
            }
        }
    }

    public static String readStringFromFile(File file) throws IOException {
        BufferedReader bufferedReader;
        Throwable th;
        String str = null;
        if (file != null) {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                        sb.append("\n");
                    }
                    str = sb.toString();
                    CommonUtils.closeDataObject(bufferedReader);
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.closeDataObject(bufferedReader);
                    throw th;
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                bufferedReader = null;
                th = th4;
                CommonUtils.closeDataObject(bufferedReader);
                throw th;
            }
        }
        return str;
    }
}
