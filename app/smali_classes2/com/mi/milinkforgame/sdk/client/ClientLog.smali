.class public Lcom/mi/milinkforgame/sdk/client/ClientLog;
.super Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;
.source "ClientLog.java"


# static fields
.field private static sInstance:Lcom/mi/milinkforgame/sdk/client/ClientLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->sInstance:Lcom/mi/milinkforgame/sdk/client/ClientLog;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;-><init>()V

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    sget-object v1, Lcom/mi/milinkforgame/sdk/client/ClientLog;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->setInstance(Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;)V

    const-string v0, "client.debug.file.tracelevel"

    invoke-virtual {p0, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "client.debug.logcat.tracelevel"

    invoke-virtual {p0, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ensureLogsToFile()V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->flush()V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;
    .locals 2

    sget-object v0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->sInstance:Lcom/mi/milinkforgame/sdk/client/ClientLog;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milinkforgame/sdk/client/ClientLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->sInstance:Lcom/mi/milinkforgame/sdk/client/ClientLog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/client/ClientLog;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->sInstance:Lcom/mi/milinkforgame/sdk/client/ClientLog;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/client/ClientLog;->sInstance:Lcom/mi/milinkforgame/sdk/client/ClientLog;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static packLogs(JLjava/io/File;Ljava/io/File;)Z
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->pack(JLjava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static setFileTraceLevel(I)V
    .locals 1

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    const-string v0, "client.debug.file.tracelevel"

    invoke-static {v0, p0}, Lcom/mi/milinkforgame/sdk/data/Option;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setLogcatTraceLevel(I)V
    .locals 1

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    const-string v0, "client.debug.logcat.tracelevel"

    invoke-static {v0, p0}, Lcom/mi/milinkforgame/sdk/data/Option;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMaxFolderSize(J)V
    .locals 2

    const-wide/32 v0, 0x80000

    div-long v0, p0, v0

    long-to-int v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x48

    :cond_0
    const-string v1, "client.debug.file.blockcount"

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/data/Option;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMaxKeepPeriod(J)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/32 p0, 0xf731400

    :cond_0
    const-string v0, "client.debug.file.keepperiod"

    invoke-static {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/data/Option;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->getInstance()Lcom/mi/milinkforgame/sdk/client/ClientLog;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public pack(JLjava/io/File;Ljava/io/File;)Z
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerReader;

    sget-object v1, Lcom/mi/milinkforgame/sdk/client/ClientLog;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerReader;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    invoke-virtual {v0, p1, p2, p3, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerReader;->pack(JLjava/io/File;Z)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerReader;

    sget-object v2, Lcom/mi/milinkforgame/sdk/client/ClientLog;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-direct {v1, v2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerReader;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    invoke-virtual {v1, p1, p2, p3, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerReader;->pack(JLjava/io/File;Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/File;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2, p4}, Lcom/mi/milinkforgame/sdk/util/FileUtils;->zip([Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
