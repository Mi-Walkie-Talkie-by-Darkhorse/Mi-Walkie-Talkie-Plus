.class public final Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;
.super Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;
.source "MiLinkLog.java"


# static fields
.field private static volatile sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;-><init>()V

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    sget-object v1, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->setInstance(Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;)V

    const-string v0, "debug.file.tracelevel"

    invoke-virtual {p0, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const-string v0, "debug.logcat.tracelevel"

    invoke-virtual {p0, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/16 v1, 0x10

    const-string v2, ""

    invoke-virtual {v0, v1, p0, v2, p1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;
    .locals 2

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setFileTraceLevel(I)V
    .locals 1

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    const-string v0, "debug.file.tracelevel"

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
    const-string v0, "debug.logcat.tracelevel"

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
    const-string v1, "debug.file.blockcount"

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
    const-string v0, "debug.file.keepperiod"

    invoke-static {v0, p0, p1}, Lcom/mi/milinkforgame/sdk/data/Option;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
