package com.mi.milinkforgame.sdk.base.debug;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.data.SafeStringQueue;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.channels.FileChannel;

public class FileTracer extends Tracer implements Callback {
    private static final int MSG_FLUSH = 1024;
    private static final String TAG = FileTracer.class.getSimpleName();
    private volatile SafeStringQueue mBufferA;
    private volatile SafeStringQueue mBufferB;
    private char[] mCharBuffer;
    private FileTracerConfig mConfig;
    private File mCurrTraceFile;
    private FileChannel mFc;
    private OutputStreamWriter mFileWriter;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private volatile boolean mIsFlushing;
    private volatile SafeStringQueue mReadBuffer;
    private volatile SafeStringQueue mWriteBuffer;

    public FileTracer(FileTracerConfig fileTracerConfig) {
        this(63, true, TraceFormat.DEFAULT, fileTracerConfig);
    }

    public FileTracer(int i, boolean z, TraceFormat traceFormat, FileTracerConfig fileTracerConfig) {
        super(i, z, traceFormat);
        this.mIsFlushing = false;
        setConfig(fileTracerConfig);
        this.mBufferA = new SafeStringQueue();
        this.mBufferB = new SafeStringQueue();
        this.mWriteBuffer = this.mBufferA;
        this.mReadBuffer = this.mBufferB;
        this.mCharBuffer = new char[fileTracerConfig.getMaxBufferSize()];
        obtainFileWriter();
        this.mHandlerThread = new HandlerThread(fileTracerConfig.getThreadName(), fileTracerConfig.getThreadPriority());
        if (this.mHandlerThread != null) {
            this.mHandlerThread.start();
        }
        if (this.mHandlerThread.isAlive()) {
            this.mHandler = new Handler(this.mHandlerThread.getLooper(), this);
        }
        prepareNextFlush();
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                FileTracer.this.getConfig().cleanWorkFolders();
            }
        }, IPC.LogoutAsyncTimeout);
    }

    public void flush() {
        if (this.mHandler.hasMessages(1024)) {
            this.mHandler.removeMessages(1024);
        }
        this.mHandler.sendEmptyMessage(1024);
    }

    public void quit() {
        setEnabled(false);
        closeFileWriter();
        this.mHandlerThread.quit();
    }

    /* access modifiers changed from: protected */
    public void doTrace(int i, Thread thread, long j, String str, String str2, Throwable th) {
        doTrace(getTraceFormat().formatTrace(i, thread, j, str, str2, th));
    }

    /* access modifiers changed from: protected */
    public void doTrace(String str) {
        this.mWriteBuffer.addToBuffer(str);
        if (this.mWriteBuffer.getBufferSize() >= getConfig().getMaxBufferSize()) {
            flush();
        }
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1024:
                flushBuffer();
                prepareNextFlush();
                break;
        }
        return true;
    }

    private void prepareNextFlush() {
        this.mHandler.sendEmptyMessageDelayed(1024, getConfig().getFlushInterval());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003a, code lost:
        if (r0 != null) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        r0.release();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0045, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0046, code lost:
        r4 = r1;
        r1 = null;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        r1.release();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0039 A[ExcHandler: Exception (e java.lang.Exception), PHI: r0 
  PHI: (r0v3 java.nio.channels.FileLock) = (r0v0 java.nio.channels.FileLock), (r0v10 java.nio.channels.FileLock), (r0v10 java.nio.channels.FileLock) binds: [B:5:0x0014, B:11:0x0024, B:12:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:5:0x0014] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x004b A[SYNTHETIC, Splitter:B:26:0x004b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void flushBuffer() {
        /*
            r5 = this;
            r0 = 0
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            android.os.HandlerThread r2 = r5.mHandlerThread
            if (r1 == r2) goto L_0x000a
        L_0x0009:
            return
        L_0x000a:
            boolean r1 = r5.mIsFlushing
            if (r1 != 0) goto L_0x0009
            r1 = 1
            r5.mIsFlushing = r1
            r5.swapBuffers()
            java.io.Writer r1 = r5.obtainFileWriter()     // Catch:{ Exception -> 0x0039, all -> 0x0045 }
            if (r1 == 0) goto L_0x002b
            java.nio.channels.FileChannel r2 = r5.mFc     // Catch:{ Exception -> 0x0039, all -> 0x0045 }
            if (r2 == 0) goto L_0x0024
            java.nio.channels.FileChannel r2 = r5.mFc     // Catch:{ Exception -> 0x0039, all -> 0x0045 }
            java.nio.channels.FileLock r0 = r2.lock()     // Catch:{ Exception -> 0x0039, all -> 0x0045 }
        L_0x0024:
            com.mi.milinkforgame.sdk.base.data.SafeStringQueue r2 = r5.mReadBuffer     // Catch:{ Exception -> 0x0039, all -> 0x005a }
            char[] r3 = r5.mCharBuffer     // Catch:{ Exception -> 0x0039, all -> 0x005a }
            r2.writeAndFlush(r1, r3)     // Catch:{ Exception -> 0x0039, all -> 0x005a }
        L_0x002b:
            if (r0 == 0) goto L_0x0030
            r0.release()     // Catch:{ Exception -> 0x0054 }
        L_0x0030:
            com.mi.milinkforgame.sdk.base.data.SafeStringQueue r0 = r5.mReadBuffer
            r0.clear()
        L_0x0035:
            r0 = 0
            r5.mIsFlushing = r0
            goto L_0x0009
        L_0x0039:
            r1 = move-exception
            if (r0 == 0) goto L_0x003f
            r0.release()     // Catch:{ Exception -> 0x0056 }
        L_0x003f:
            com.mi.milinkforgame.sdk.base.data.SafeStringQueue r0 = r5.mReadBuffer
            r0.clear()
            goto L_0x0035
        L_0x0045:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0049:
            if (r1 == 0) goto L_0x004e
            r1.release()     // Catch:{ Exception -> 0x0058 }
        L_0x004e:
            com.mi.milinkforgame.sdk.base.data.SafeStringQueue r1 = r5.mReadBuffer
            r1.clear()
            throw r0
        L_0x0054:
            r0 = move-exception
            goto L_0x0030
        L_0x0056:
            r0 = move-exception
            goto L_0x003f
        L_0x0058:
            r1 = move-exception
            goto L_0x004e
        L_0x005a:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.base.debug.FileTracer.flushBuffer():void");
    }

    private Writer obtainFileWriter() {
        boolean z = false;
        File currFile = getConfig().getCurrFile();
        if (this.mCurrTraceFile != null && (!this.mCurrTraceFile.exists() || !this.mCurrTraceFile.canWrite())) {
            z = true;
        }
        if (z || (currFile != null && !currFile.equals(this.mCurrTraceFile))) {
            this.mCurrTraceFile = currFile;
            closeFileWriter();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.mCurrTraceFile, true);
                this.mFc = fileOutputStream.getChannel();
                this.mFileWriter = new OutputStreamWriter(fileOutputStream);
            } catch (IOException e) {
                return null;
            }
        }
        return this.mFileWriter;
    }

    private void closeFileWriter() {
        try {
            if (this.mFileWriter != null) {
                this.mFc = null;
                this.mFileWriter.flush();
                this.mFileWriter.close();
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
    }

    private void swapBuffers() {
        synchronized (this) {
            if (this.mWriteBuffer == this.mBufferA) {
                this.mWriteBuffer = this.mBufferB;
                this.mReadBuffer = this.mBufferA;
            } else {
                this.mWriteBuffer = this.mBufferA;
                this.mReadBuffer = this.mBufferB;
            }
        }
    }

    public FileTracerConfig getConfig() {
        return this.mConfig;
    }

    public void setConfig(FileTracerConfig fileTracerConfig) {
        this.mConfig = fileTracerConfig;
    }
}
