package com.mi.mimsgsdk.utils;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.jboss.netty.handler.codec.http.multipart.DiskFileUpload;

public final class DiskLruCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_TMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    /* access modifiers changed from: private */
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    static final String VERSION_1 = "1";
    private final int appVersion;
    private final Callable<Void> cleanupCallable = new Callable<Void>() {
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.journalWriter != null) {
                    DiskLruCache.this.trimToSize();
                    if (DiskLruCache.this.journalRebuildRequired()) {
                        DiskLruCache.this.rebuildJournal();
                        DiskLruCache.this.redundantOpCount = 0;
                    }
                }
            }
            return null;
        }
    };
    /* access modifiers changed from: private */
    public final File directory;
    private final ExecutorService executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final File journalFile;
    private final File journalFileTmp;
    /* access modifiers changed from: private */
    public Writer journalWriter;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    boolean mIsTrieSize = false;
    private final long maxSize;
    private long nextSequenceNumber = 0;
    /* access modifiers changed from: private */
    public int redundantOpCount;
    private long size = 0;
    /* access modifiers changed from: private */
    public final int valueCount;

    public final class Editor {
        /* access modifiers changed from: private */
        public final Entry entry;
        /* access modifiers changed from: private */
        public boolean hasErrors;

        private class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }
        }

        private Editor(Entry entry2) {
            this.entry = entry2;
        }

        public InputStream newInputStream(int i) throws IOException {
            FileInputStream fileInputStream;
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                } else if (!this.entry.readable) {
                    fileInputStream = null;
                } else {
                    fileInputStream = new FileInputStream(this.entry.getCleanFile(i));
                }
            }
            return fileInputStream;
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            if (newInputStream != null) {
                return DiskLruCache.inputStreamToString(newInputStream);
            }
            return null;
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FaultHidingOutputStream faultHidingOutputStream;
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                faultHidingOutputStream = new FaultHidingOutputStream(new FileOutputStream(this.entry.getDirtyFile(i)));
            }
            return faultHidingOutputStream;
        }

        public void set(int i, String str) throws IOException {
            OutputStreamWriter outputStreamWriter;
            try {
                outputStreamWriter = new OutputStreamWriter(newOutputStream(i), DiskLruCache.UTF_8);
                try {
                    outputStreamWriter.write(str);
                    ImageCacheUtils.closeQuietly(outputStreamWriter);
                } catch (Throwable th) {
                    th = th;
                    ImageCacheUtils.closeQuietly(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter = null;
                ImageCacheUtils.closeQuietly(outputStreamWriter);
                throw th;
            }
        }

        public void commit() throws IOException {
            if (this.hasErrors) {
                DiskLruCache.this.completeEdit(this, false);
                DiskLruCache.this.remove(this.entry.key, false);
                return;
            }
            DiskLruCache.this.completeEdit(this, true);
        }

        public void abort() throws IOException {
            DiskLruCache.this.completeEdit(this, false);
        }
    }

    private final class Entry {
        /* access modifiers changed from: private */
        public Editor currentEditor;
        /* access modifiers changed from: private */
        public final String key;
        /* access modifiers changed from: private */
        public final long[] lengths;
        /* access modifiers changed from: private */
        public boolean readable;
        /* access modifiers changed from: private */
        public long sequenceNumber;

        private Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.valueCount];
        }

        public String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long append : this.lengths) {
                sb.append(' ').append(append);
            }
            return sb.toString();
        }

        /* access modifiers changed from: private */
        public void setLengths(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.valueCount) {
                throw invalidLengths(strArr);
            }
            int i = 0;
            while (i < strArr.length) {
                try {
                    this.lengths[i] = Long.parseLong(strArr[i]);
                    i++;
                } catch (NumberFormatException e) {
                    throw invalidLengths(strArr);
                }
            }
        }

        private IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i);
        }

        public File getDirtyFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i + DiskFileUpload.postfix);
        }
    }

    private class InvalidKeyException extends Exception {
        InvalidKeyException(String str) {
            super(str);
        }
    }

    public final class Snapshot implements Closeable {
        private final InputStream[] ins;
        private final String key;
        private final long sequenceNumber;

        private Snapshot(String str, long j, InputStream[] inputStreamArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.ins = inputStreamArr;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public InputStream getInputStream(int i) {
            return this.ins[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.inputStreamToString(getInputStream(i));
        }

        public void close() {
            for (InputStream closeQuietly : this.ins) {
                ImageCacheUtils.closeQuietly(closeQuietly);
            }
        }
    }

    private static <T> T[] copyOfRange(T[] tArr, int i, int i2) {
        int length = tArr.length;
        if (i > i2) {
            throw new IllegalArgumentException();
        } else if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        } else {
            int i3 = i2 - i;
            int min = Math.min(i3, length - i);
            T[] tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), i3);
            System.arraycopy(tArr, i, tArr2, 0, min);
            return tArr2;
        }
    }

    private static void deleteContents(File file) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        deleteContents(file2);
                    }
                    if (!file2.delete()) {
                        throw new IOException("failed to delete file: " + file2);
                    }
                }
                return;
            }
            return;
        }
        file.delete();
    }

    private static String readFully(Reader reader) throws IOException {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, read);
            }
        } finally {
            reader.close();
        }
    }

    private static String readAsciiLine(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(512);
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                throw new EOFException();
            } else if (read == 10) {
                int length = sb.length();
                if (length > 0 && sb.charAt(length - 1) == 13) {
                    sb.setLength(length - 1);
                }
                return sb.toString();
            } else {
                sb.append((char) read);
            }
        }
    }

    private DiskLruCache(File file, int i, int i2, long j) {
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TMP);
        this.valueCount = i2;
        this.maxSize = j;
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.journalFile.exists()) {
                try {
                    diskLruCache.readJournal();
                    diskLruCache.processJournal();
                    diskLruCache.journalWriter = new BufferedWriter(new FileWriter(diskLruCache.journalFile, true));
                    return diskLruCache;
                } catch (IOException e) {
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.rebuildJournal();
            return diskLruCache2;
        }
    }

    private void readJournal() throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.journalFile));
        try {
            String readAsciiLine = readAsciiLine(bufferedInputStream);
            String readAsciiLine2 = readAsciiLine(bufferedInputStream);
            String readAsciiLine3 = readAsciiLine(bufferedInputStream);
            String readAsciiLine4 = readAsciiLine(bufferedInputStream);
            String readAsciiLine5 = readAsciiLine(bufferedInputStream);
            if (!MAGIC.equals(readAsciiLine) || !"1".equals(readAsciiLine2) || !Integer.toString(this.appVersion).equals(readAsciiLine3) || !Integer.toString(this.valueCount).equals(readAsciiLine4) || !"".equals(readAsciiLine5)) {
                throw new IOException("unexpected journal header: [" + readAsciiLine + ", " + readAsciiLine2 + ", " + readAsciiLine4 + ", " + readAsciiLine5 + "]");
            }
            while (true) {
                readJournalLine(readAsciiLine(bufferedInputStream));
            }
        } catch (EOFException e) {
        } catch (InvalidKeyException e2) {
            rebuildJournal();
        } catch (Throwable th) {
            ImageCacheUtils.closeQuietly(bufferedInputStream);
            throw th;
        }
        ImageCacheUtils.closeQuietly(bufferedInputStream);
    }

    private void readJournalLine(String str) throws IOException, InvalidKeyException {
        Entry entry;
        String[] split = str.split(Token.SEPARATOR);
        if (split.length < 2) {
            throw new IOException("unexpected journal line: " + str);
        }
        String str2 = split[1];
        if (!split[0].equals(REMOVE) || split.length != 2) {
            Entry entry2 = (Entry) this.lruEntries.get(str2);
            if (entry2 != null) {
                entry = entry2;
            } else if (str2.length() > 1024) {
                throw new InvalidKeyException("key length bigger than 512");
            } else {
                Entry entry3 = new Entry(str2);
                this.lruEntries.put(str2, entry3);
                entry = entry3;
            }
            if (split[0].equals(CLEAN) && split.length == this.valueCount + 2) {
                entry.readable = true;
                entry.currentEditor = null;
                entry.setLengths((String[]) copyOfRange(split, 2, split.length));
            } else if (split[0].equals(DIRTY) && split.length == 2) {
                entry.currentEditor = new Editor(entry);
            } else if (!split[0].equals(READ) || split.length != 2) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            this.lruEntries.remove(str2);
        }
    }

    private void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (entry.currentEditor == null) {
                for (int i = 0; i < this.valueCount; i++) {
                    this.size += entry.lengths[i];
                }
            } else {
                entry.currentEditor = null;
                for (int i2 = 0; i2 < this.valueCount; i2++) {
                    deleteIfExists(entry.getCleanFile(i2));
                    deleteIfExists(entry.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    /* access modifiers changed from: private */
    public synchronized void rebuildJournal() throws IOException {
        if (this.journalWriter != null) {
            this.journalWriter.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.journalFileTmp));
        bufferedWriter.write(MAGIC);
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.appVersion));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.valueCount));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (Entry entry : this.lruEntries.values()) {
            if (entry.currentEditor != null) {
                bufferedWriter.write("DIRTY " + entry.key + 10);
            } else {
                bufferedWriter.write("CLEAN " + entry.key + entry.getLengths() + 10);
            }
        }
        bufferedWriter.close();
        this.journalFileTmp.renameTo(this.journalFile);
        this.journalWriter = new BufferedWriter(new FileWriter(this.journalFile, true));
    }

    private static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public synchronized Snapshot get(String str) throws IOException {
        Snapshot snapshot = null;
        synchronized (this) {
            checkNotClosed();
            String validateKey = validateKey(str);
            Entry entry = (Entry) this.lruEntries.get(validateKey);
            if (entry != null && entry.readable) {
                InputStream[] inputStreamArr = new InputStream[this.valueCount];
                int i = 0;
                while (i < this.valueCount) {
                    try {
                        inputStreamArr[i] = new FileInputStream(entry.getCleanFile(i));
                        i++;
                    } catch (FileNotFoundException e) {
                    }
                }
                this.redundantOpCount++;
                this.journalWriter.append("READ " + validateKey + 10);
                if (journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                snapshot = new Snapshot(validateKey, entry.sequenceNumber, inputStreamArr);
            }
        }
        return snapshot;
    }

    public synchronized String getCacheFilePath(String str) {
        String str2;
        checkNotClosed();
        Entry entry = (Entry) this.lruEntries.get(validateKey(str));
        if (entry == null || !entry.readable) {
            str2 = null;
        } else {
            str2 = entry.getCleanFile(0).getAbsolutePath();
        }
        return str2;
    }

    public Editor edit(String str) throws IOException {
        return edit(str, -1);
    }

    /* access modifiers changed from: private */
    public synchronized Editor edit(String str, long j) throws IOException {
        Entry entry;
        Editor editor;
        checkNotClosed();
        String validateKey = validateKey(str);
        Entry entry2 = (Entry) this.lruEntries.get(validateKey);
        if (j == -1 || (entry2 != null && entry2.sequenceNumber == j)) {
            if (entry2 == null) {
                Entry entry3 = new Entry(validateKey);
                this.lruEntries.put(validateKey, entry3);
                entry = entry3;
            } else if (entry2.currentEditor != null) {
                editor = null;
            } else {
                entry = entry2;
            }
            editor = new Editor(entry);
            entry.currentEditor = editor;
            this.journalWriter.write("DIRTY " + validateKey + 10);
            this.journalWriter.flush();
        } else {
            editor = null;
        }
        return editor;
    }

    public File getDirectory() {
        return this.directory;
    }

    public long maxSize() {
        return this.maxSize;
    }

    public synchronized long size() {
        return this.size;
    }

    /* access modifiers changed from: private */
    public synchronized void completeEdit(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            Entry access$1400 = editor.entry;
            if (access$1400.currentEditor == editor) {
                if (z) {
                    if (!access$1400.readable) {
                        int i = 0;
                        while (true) {
                            if (i < this.valueCount) {
                                if (!access$1400.getDirtyFile(i).exists()) {
                                    editor.abort();
                                    break;
                                }
                                i++;
                            }
                        }
                    }
                }
                for (int i2 = 0; i2 < this.valueCount; i2++) {
                    File dirtyFile = access$1400.getDirtyFile(i2);
                    if (!z) {
                        deleteIfExists(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = access$1400.getCleanFile(i2);
                        dirtyFile.renameTo(cleanFile);
                        long j = access$1400.lengths[i2];
                        long length = cleanFile.length();
                        access$1400.lengths[i2] = length;
                        this.size = (this.size - j) + length;
                    }
                }
                this.redundantOpCount++;
                access$1400.currentEditor = null;
                if (access$1400.readable || z) {
                    access$1400.readable = true;
                    this.journalWriter.write("CLEAN " + access$1400.key + access$1400.getLengths() + 10);
                    if (z) {
                        long j2 = this.nextSequenceNumber;
                        this.nextSequenceNumber = 1 + j2;
                        access$1400.sequenceNumber = j2;
                    }
                } else {
                    this.lruEntries.remove(access$1400.key);
                    this.journalWriter.write("REMOVE " + access$1400.key + 10);
                }
                if (this.size > this.maxSize || journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean journalRebuildRequired() {
        return this.redundantOpCount >= 2000 && this.redundantOpCount >= this.lruEntries.size();
    }

    public synchronized boolean remove(String str, boolean z) throws IOException {
        boolean z2;
        synchronized (this) {
            checkNotClosed();
            if (z) {
                str = validateKey(str);
            }
            Entry entry = (Entry) this.lruEntries.get(str);
            if (entry == null || entry.currentEditor != null) {
                z2 = false;
            } else {
                for (int i = 0; i < this.valueCount; i++) {
                    File cleanFile = entry.getCleanFile(i);
                    if (!cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.size -= entry.lengths[i];
                    entry.lengths[i] = 0;
                }
                this.redundantOpCount++;
                this.journalWriter.append("REMOVE " + str + 10);
                this.lruEntries.remove(str);
                if (journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                z2 = true;
            }
        }
        return z2;
    }

    public boolean isClosed() {
        return this.journalWriter == null;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void flush() throws IOException {
        checkNotClosed();
        trimToSize();
        this.journalWriter.flush();
    }

    public synchronized void close() throws IOException {
        if (this.journalWriter != null) {
            Iterator it = new ArrayList(this.lruEntries.values()).iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (entry.currentEditor != null) {
                    entry.currentEditor.abort();
                }
            }
            trimToSize();
            this.journalWriter.close();
            this.journalWriter = null;
        }
    }

    /* access modifiers changed from: private */
    public synchronized void trimToSize() throws IOException {
        if (!this.mIsTrieSize) {
            this.mIsTrieSize = true;
            while (this.size > this.maxSize) {
                try {
                    remove((String) ((java.util.Map.Entry) this.lruEntries.entrySet().iterator().next()).getKey(), false);
                } catch (IOException e) {
                }
            }
            this.mIsTrieSize = false;
        }
    }

    public void delete() throws IOException {
        close();
        deleteContents(this.directory);
    }

    private String validateKey(String str) {
        String replaceAll = Pattern.compile("\\s+|\t|\r|\n").matcher(str).replaceAll("");
        if (replaceAll.length() > 1024) {
            return replaceAll.substring(0, 1024);
        }
        return replaceAll;
    }

    /* access modifiers changed from: private */
    public static String inputStreamToString(InputStream inputStream) throws IOException {
        return readFully(new InputStreamReader(inputStream, UTF_8));
    }

    public static String getCommonUrlDiskKey(String str) {
        return str.replaceAll("[.:/,%?&=]", "+").replaceAll("[+]+", "+");
    }
}
