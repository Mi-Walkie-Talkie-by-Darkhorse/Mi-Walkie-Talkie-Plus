.class public Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;
.super Lcom/mi/milinkforgame/sdk/base/debug/Tracer;
.source "FileTracer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FLUSH:I = 0x400

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mBufferA:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

.field private volatile mBufferB:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

.field private mCharBuffer:[C

.field private mConfig:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

.field private mCurrTraceFile:Ljava/io/File;

.field private mFc:Ljava/nio/channels/FileChannel;

.field private mFileWriter:Ljava/io/OutputStreamWriter;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIsFlushing:Z

.field private volatile mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

.field private volatile mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZLcom/mi/milinkforgame/sdk/base/debug/TraceFormat;Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;-><init>(IZLcom/mi/milinkforgame/sdk/base/debug/TraceFormat;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mIsFlushing:Z

    invoke-virtual {p0, p4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->setConfig(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferA:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferB:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferA:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferB:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {p4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getMaxBufferSize()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCharBuffer:[C

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->obtainFileWriter()Ljava/io/Writer;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getThreadPriority()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandler:Landroid/os/Handler;

    :cond_1
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->prepareNextFlush()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer$1;

    invoke-direct {v1, p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer$1;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public constructor <init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V
    .locals 3

    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;->DEFAULT:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;-><init>(IZLcom/mi/milinkforgame/sdk/base/debug/TraceFormat;Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    return-void
.end method

.method private closeFileWriter()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFileWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFc:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFileWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFileWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private flushBuffer()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mIsFlushing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mIsFlushing:Z

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->swapBuffers()V

    :try_start_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->obtainFileWriter()Ljava/io/Writer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFc:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCharBuffer:[C

    invoke-virtual {v2, v1, v3}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->writeAndFlush(Ljava/io/Writer;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->clear()V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mIsFlushing:Z

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->clear()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4
.end method

.method private obtainFileWriter()Ljava/io/Writer;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->getConfig()Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getCurrFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCurrTraceFile:Ljava/io/File;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCurrTraceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCurrTraceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCurrTraceFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCurrTraceFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->closeFileWriter()V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mCurrTraceFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFc:Ljava/nio/channels/FileChannel;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFileWriter:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mFileWriter:Ljava/io/OutputStreamWriter;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareNextFlush()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->getConfig()Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getFlushInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private swapBuffers()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferA:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferB:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferA:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferA:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mBufferB:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mReadBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->getTraceFormat()Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;->formatTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->doTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected doTrace(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->addToBuffer(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mWriteBuffer:Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/data/SafeStringQueue;->getBufferSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->getConfig()Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getMaxBufferSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    const/16 v1, 0x400

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getConfig()Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mConfig:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->flushBuffer()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->prepareNextFlush()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->closeFileWriter()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public setConfig(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->mConfig:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    return-void
.end method
