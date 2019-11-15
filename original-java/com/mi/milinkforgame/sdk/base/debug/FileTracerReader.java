package com.mi.milinkforgame.sdk.base.debug;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.mi.milinkforgame.sdk.util.FileUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTracerReader {
    private static final int DEF_BUFFER_SIZE = 8192;
    private static final String TAG = FileTracerReader.class.getSimpleName();
    private FileTracerConfig mConfig;

    @Deprecated
    public interface ReaderCallback {
        void onTraceRead(FileTracerReader fileTracerReader, byte[] bArr, int i);
    }

    public FileTracerReader(FileTracerConfig fileTracerConfig) {
        setConfig(fileTracerConfig);
    }

    public FileTracerReader(FileTracer fileTracer) {
        this(fileTracer.getConfig());
    }

    public File pack(long j, File file) {
        return pack(j, file, true);
    }

    public File pack(long j, File file, boolean z) {
        File doPack = doPack(j, file);
        if (doPack == null) {
            return null;
        }
        if (!z) {
            return doPack;
        }
        File file2 = new File(doPack.getAbsolutePath() + FileUtils.ZIP_FILE_EXT);
        if (!FileUtils.zip(doPack, file2)) {
            file2 = null;
        }
        return file2;
    }

    private File doPack(long j, File file) {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        File workFolder = getConfig().getWorkFolder(j);
        File[] allBlocksInFolder = getConfig().getAllBlocksInFolder(workFolder);
        File file2 = new File(file, workFolder.getName() + getConfig().getFileExt());
        if (file2.exists()) {
            file2.delete();
        }
        if (allBlocksInFolder == null) {
            try {
                file2.createNewFile();
                return file2;
            } catch (IOException e) {
                return file2;
            }
        } else {
            getConfig().sortBlocksByIndex(allBlocksInFolder);
            byte[] bArr = new byte[8192];
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2, true));
                try {
                    int length = allBlocksInFolder.length;
                    int i = 0;
                    bufferedInputStream2 = null;
                    while (i < length) {
                        try {
                            File file3 = allBlocksInFolder[i];
                            CommonUtils.closeDataObject(bufferedInputStream2);
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(file3));
                            while (true) {
                                try {
                                    int read = bufferedInputStream.read(bArr, 0, bArr.length);
                                    if (read <= 0) {
                                        break;
                                    }
                                    bufferedOutputStream.write(bArr, 0, read);
                                } catch (IOException e2) {
                                    e = e2;
                                    try {
                                        ThrowableExtension.printStackTrace(e);
                                        CommonUtils.closeDataObject(bufferedOutputStream);
                                        CommonUtils.closeDataObject(bufferedInputStream);
                                        return null;
                                    } catch (Throwable th) {
                                        th = th;
                                        bufferedInputStream2 = bufferedInputStream;
                                        CommonUtils.closeDataObject(bufferedOutputStream);
                                        CommonUtils.closeDataObject(bufferedInputStream2);
                                        throw th;
                                    }
                                }
                            }
                            i++;
                            bufferedInputStream2 = bufferedInputStream;
                        } catch (IOException e3) {
                            e = e3;
                            bufferedInputStream = bufferedInputStream2;
                            ThrowableExtension.printStackTrace(e);
                            CommonUtils.closeDataObject(bufferedOutputStream);
                            CommonUtils.closeDataObject(bufferedInputStream);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            CommonUtils.closeDataObject(bufferedOutputStream);
                            CommonUtils.closeDataObject(bufferedInputStream2);
                            throw th;
                        }
                    }
                    bufferedOutputStream.flush();
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(bufferedInputStream2);
                    return file2;
                } catch (IOException e4) {
                    e = e4;
                    bufferedInputStream = null;
                    ThrowableExtension.printStackTrace(e);
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(bufferedInputStream);
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream2 = null;
                    CommonUtils.closeDataObject(bufferedOutputStream);
                    CommonUtils.closeDataObject(bufferedInputStream2);
                    throw th;
                }
            } catch (IOException e5) {
                e = e5;
                bufferedOutputStream = null;
                bufferedInputStream = null;
                ThrowableExtension.printStackTrace(e);
                CommonUtils.closeDataObject(bufferedOutputStream);
                CommonUtils.closeDataObject(bufferedInputStream);
                return null;
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream = null;
                bufferedInputStream2 = null;
                CommonUtils.closeDataObject(bufferedOutputStream);
                CommonUtils.closeDataObject(bufferedInputStream2);
                throw th;
            }
        }
    }

    @Deprecated
    public boolean read(long j, byte[] bArr, int i, int i2, int i3, ReaderCallback readerCallback) {
        int i4;
        if (readerCallback == null) {
            return false;
        }
        if (bArr == null) {
            bArr = new byte[8192];
        }
        if (i3 > bArr.length) {
            int length = bArr.length;
        }
        boolean z = false;
        File[] allBlocksInFolder = getConfig().getAllBlocksInFolder(getConfig().getWorkFolder(j));
        if (allBlocksInFolder == null) {
            return false;
        }
        getConfig().sortBlocksByIndex(allBlocksInFolder);
        BufferedInputStream bufferedInputStream = null;
        while (i < allBlocksInFolder.length) {
            try {
                File file = allBlocksInFolder[i];
                if (((long) i2) > file.length()) {
                    i4 = i2 - ((int) file.length());
                } else {
                    CommonUtils.closeDataObject(bufferedInputStream);
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                    if (i2 > 0) {
                        try {
                            bufferedInputStream2.skip((long) i2);
                            i4 = 0;
                        } catch (IOException e) {
                            e = e;
                            bufferedInputStream = bufferedInputStream2;
                            try {
                                ThrowableExtension.printStackTrace(e);
                                CommonUtils.closeDataObject(bufferedInputStream);
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                CommonUtils.closeDataObject(bufferedInputStream);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedInputStream = bufferedInputStream2;
                            CommonUtils.closeDataObject(bufferedInputStream);
                            throw th;
                        }
                    } else {
                        i4 = i2;
                    }
                    while (true) {
                        int read = bufferedInputStream2.read(bArr, 0, bArr.length);
                        if (read <= 0) {
                            break;
                        }
                        readerCallback.onTraceRead(this, bArr, read);
                    }
                    BufferedInputStream bufferedInputStream3 = bufferedInputStream2;
                    z = true;
                    bufferedInputStream = bufferedInputStream3;
                }
                i++;
                i2 = i4;
            } catch (IOException e2) {
                e = e2;
                ThrowableExtension.printStackTrace(e);
                CommonUtils.closeDataObject(bufferedInputStream);
                return false;
            }
        }
        CommonUtils.closeDataObject(bufferedInputStream);
        return z;
    }

    public FileTracerConfig getConfig() {
        return this.mConfig;
    }

    public void setConfig(FileTracerConfig fileTracerConfig) {
        this.mConfig = fileTracerConfig;
    }
}
