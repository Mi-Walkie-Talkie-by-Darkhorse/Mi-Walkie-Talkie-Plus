package com.mi.milinkforgame.sdk.base.debug;

import com.mi.milinkforgame.sdk.util.CommonUtils;
import com.mi.milinkforgame.sdk.util.FileUtils;
import java.io.File;
import java.io.FileFilter;
import java.util.Arrays;
import java.util.Comparator;

public class FileTracerConfig {
    public static final int DEF_BUFFER_SIZE = 8192;
    public static final long DEF_FLUSH_INTERVAL = 10000;
    public static final String DEF_FOLDER_FORMAT = "yyyy-MM-dd";
    public static final String DEF_THREAD_NAME = "Tracer.File";
    public static final String DEF_TRACE_FILEEXT = ".log";
    private static final FileFilter DEF_TRACE_FOLDER_FILTER = new FileFilter() {
        public boolean accept(File file) {
            if (file.isDirectory() && FileTracerConfig.getTimeFromFolder(file) > 0) {
                return true;
            }
            return false;
        }
    };
    public static final long FOREVER = Long.MAX_VALUE;
    public static final int NO_LIMITED = Integer.MAX_VALUE;
    public static final int PRIORITY_BACKGROUND = 10;
    public static final int PRIORITY_STANDARD = 0;
    private Comparator<? super File> mBlockComparetor;
    private String mFileExt;
    private long mFlushInterval;
    private long mKeepPeriod;
    private FileFilter mLogFileFilter;
    private int mMaxBlockCount;
    private int mMaxBlockSize;
    private int mMaxBufferSize;
    private File mRootFolder;
    private String mThreadName;
    private int mThreadPriority;

    public static long getTimeFromFolder(File file) {
        try {
            return CommonUtils.createDataFormat(DEF_FOLDER_FORMAT).parse(file.getName()).getTime();
        } catch (Exception e) {
            return -1;
        }
    }

    public FileTracerConfig(File file) {
        this(file, Integer.MAX_VALUE, Integer.MAX_VALUE, 8192, DEF_THREAD_NAME, DEF_FLUSH_INTERVAL, 10, DEF_TRACE_FILEEXT, FOREVER);
    }

    public FileTracerConfig(File file, int i, int i2, int i3, String str, long j, int i4, String str2, long j2) {
        this.mThreadName = DEF_THREAD_NAME;
        this.mMaxBlockSize = Integer.MAX_VALUE;
        this.mMaxBlockCount = Integer.MAX_VALUE;
        this.mMaxBufferSize = 8192;
        this.mFlushInterval = DEF_FLUSH_INTERVAL;
        this.mThreadPriority = 10;
        this.mFileExt = DEF_TRACE_FILEEXT;
        this.mKeepPeriod = FOREVER;
        this.mLogFileFilter = new FileFilter() {
            public boolean accept(File file) {
                if (file.getName().endsWith(FileTracerConfig.this.getFileExt()) && FileTracerConfig.getBlockCountFromFile(file) != -1) {
                    return true;
                }
                return false;
            }
        };
        this.mBlockComparetor = new Comparator<File>() {
            public int compare(File file, File file2) {
                return FileTracerConfig.getBlockCountFromFile(file) - FileTracerConfig.getBlockCountFromFile(file2);
            }
        };
        setRootFolder(file);
        setMaxBlockCount(i);
        setMaxBlockSize(i2);
        setMaxBufferSize(i3);
        setThreadName(str);
        setFlushInterval(j);
        setThreadPriority(i4);
        setFileExt(str2);
        setKeepPeriod(j2);
    }

    public File getCurrFile() {
        return getWorkFile(System.currentTimeMillis());
    }

    private File getWorkFile(long j) {
        return ensureBlockCount(getWorkFolder(j));
    }

    public File getWorkFolder(long j) {
        File workFolderPath = getWorkFolderPath(j);
        if (!workFolderPath.exists()) {
            workFolderPath.mkdirs();
        }
        return workFolderPath;
    }

    public boolean isWorkFolderExists(long j) {
        return getWorkFolderPath(j).exists();
    }

    private File getWorkFolderPath(long j) {
        return new File(getRootFolder(), CommonUtils.createDataFormat(DEF_FOLDER_FORMAT).format(Long.valueOf(j)));
    }

    private File ensureBlockCount(File file) {
        File[] allBlocksInFolder = getAllBlocksInFolder(file);
        if (allBlocksInFolder == null || allBlocksInFolder.length == 0) {
            return new File(file, "1" + getFileExt());
        }
        sortBlocksByIndex(allBlocksInFolder);
        File file2 = allBlocksInFolder[allBlocksInFolder.length - 1];
        int length = allBlocksInFolder.length - getMaxBlockCount();
        if (((int) file2.length()) > getMaxBlockSize()) {
            file2 = new File(file, (getBlockCountFromFile(file2) + 1) + getFileExt());
            length++;
        }
        for (int i = 0; i < length; i++) {
            allBlocksInFolder[i].delete();
        }
        return file2;
    }

    public File[] getAllBlocksInFolder(File file) {
        return file.listFiles(this.mLogFileFilter);
    }

    public void cleanWorkFolders() {
        if (getRootFolder() != null) {
            File[] listFiles = getRootFolder().listFiles(DEF_TRACE_FOLDER_FILTER);
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (System.currentTimeMillis() - getTimeFromFolder(file) > getKeepPeriod()) {
                        FileUtils.deleteFile(file);
                    }
                }
            }
        }
    }

    public long getSizeOfBlocks(File file) {
        ensureBlockCount(file);
        return getSizeOfBlocks(getAllBlocksInFolder(file));
    }

    public long getSizeOfBlocks(File[] fileArr) {
        long j = 0;
        for (File file : fileArr) {
            if (file.exists() && file.isFile()) {
                j += file.length();
            }
        }
        return j;
    }

    public File[] sortBlocksByIndex(File[] fileArr) {
        Arrays.sort(fileArr, this.mBlockComparetor);
        return fileArr;
    }

    /* access modifiers changed from: private */
    public static int getBlockCountFromFile(File file) {
        try {
            String name = file.getName();
            return Integer.parseInt(name.substring(0, name.indexOf(46)));
        } catch (Exception e) {
            return -1;
        }
    }

    public String getThreadName() {
        return this.mThreadName;
    }

    public void setThreadName(String str) {
        this.mThreadName = str;
    }

    public int getMaxBlockSize() {
        return this.mMaxBlockSize;
    }

    public void setMaxBlockSize(int i) {
        this.mMaxBlockSize = i;
    }

    public int getMaxBlockCount() {
        return this.mMaxBlockCount;
    }

    public void setMaxBlockCount(int i) {
        this.mMaxBlockCount = i;
    }

    public int getMaxBufferSize() {
        return this.mMaxBufferSize;
    }

    public void setMaxBufferSize(int i) {
        this.mMaxBufferSize = i;
    }

    public long getFlushInterval() {
        return this.mFlushInterval;
    }

    public void setFlushInterval(long j) {
        this.mFlushInterval = j;
    }

    public File getRootFolder() {
        return this.mRootFolder;
    }

    public void setRootFolder(File file) {
        this.mRootFolder = file;
    }

    public int getThreadPriority() {
        return this.mThreadPriority;
    }

    public void setThreadPriority(int i) {
        this.mThreadPriority = i;
    }

    public String getFileExt() {
        return this.mFileExt;
    }

    public void setFileExt(String str) {
        this.mFileExt = str;
    }

    public long getKeepPeriod() {
        return this.mKeepPeriod;
    }

    public void setKeepPeriod(long j) {
        this.mKeepPeriod = j;
    }
}
