.class public Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;
.super Ljava/lang/Object;
.source "MiLinkTracer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/mi/milinkforgame/sdk/base/debug/TraceLevel;


# static fields
.field protected static final CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

.field protected static final SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

.field private static sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;


# instance fields
.field private volatile enabled:Z

.field protected fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

.field private volatile fileTracerEnabled:Z

.field protected logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

.field private volatile logcatTracerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const v12, 0x7fffffff

    const/high16 v3, 0x80000

    const/16 v4, 0x4000

    const/16 v13, 0x48

    const/16 v8, 0xa

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v12

    :goto_0
    const-string v0, "client.debug.file.keepperiod"

    const-wide/32 v6, 0xf731400

    invoke-static {v0, v6, v7}, Lcom/mi/milinkforgame/sdk/data/Option;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    const-string v5, "Mns.Client.File.Tracer"

    const-wide/16 v6, 0x3a98

    const-string v9, ".app.log"

    invoke-direct/range {v0 .. v11}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v12

    :goto_1
    const-string v0, "debug.file.keepperiod"

    const-wide/32 v6, 0xf731400

    invoke-static {v0, v6, v7}, Lcom/mi/milinkforgame/sdk/data/Option;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    const-string v5, "Mns.File.Tracer"

    const-wide/16 v6, 0x3a98

    const-string v9, ".m.log"

    invoke-direct/range {v0 .. v11}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    return-void

    :cond_0
    const-string v0, "client.debug.file.blockcount"

    invoke-static {v0, v13}, Lcom/mi/milinkforgame/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v0, "debug.file.blockcount"

    invoke-static {v0, v13}, Lcom/mi/milinkforgame/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->enabled:Z

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracerEnabled:Z

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracerEnabled:Z

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/data/Option;->startListen(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static autoTrace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static cleanClientLog()V
    .locals 4

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cleanMnsLog()V
    .locals 4

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getClientLogReader(I)Ljava/io/BufferedReader;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-ltz p0, :cond_2

    array-length v2, v0

    if-ge p0, v2, :cond_2

    array-length v2, v0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLogFileInternalPath()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLogFilePath()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Storage;->getExternalInfo()Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->getAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x5000000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->getLogFileInternalPath()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMnsLogReader(I)Ljava/io/BufferedReader;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-ltz p0, :cond_1

    array-length v2, v0

    if-ge p0, v2, :cond_1

    array-length v2, v0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    :cond_2
    const/16 v2, 0x1000

    new-array v3, v2, [B

    move v2, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    new-instance v4, Ljava/io/FileInputStream;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    const/4 v0, 0x0

    array-length v5, v3

    invoke-virtual {v4, v3, v0, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method public static prepareReportLogFile(J)Ljava/io/File;
    .locals 12

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x41c00000    # 24.0f

    const/4 v3, 0x0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_0
    sget-object v5, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    sget-object v1, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v0

    const-string v6, "report.log"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_0
    invoke-virtual {v5, p0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v6}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v5, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    move-object v6, v1

    :goto_1
    if-eqz v0, :cond_3

    array-length v1, v0

    int-to-float v1, v1

    move v5, v1

    :goto_2
    if-eqz v6, :cond_4

    array-length v1, v6

    int-to-float v1, v1

    :goto_3
    add-float v7, v5, v1

    cmpg-float v3, v7, v3

    if-gtz v3, :cond_5

    move-object v0, v4

    :goto_4
    return-object v0

    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    move v5, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    add-float v7, v5, v1

    div-float v3, v5, v7

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-float/2addr v1, v7

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    array-length v5, v0

    if-lez v5, :cond_7

    add-int/lit8 v1, v1, -0x1

    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8

    :cond_6
    :goto_6
    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    array-length v8, v0

    if-ge v7, v8, :cond_6

    array-length v7, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    invoke-interface {v3, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    if-nez v1, :cond_b

    if-eqz v6, :cond_b

    array-length v5, v6

    if-lez v5, :cond_b

    add-int/lit8 v1, v3, -0x1

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_a

    :cond_9
    :goto_7
    if-lez v1, :cond_a

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    array-length v2, v6

    if-ge v0, v2, :cond_9

    array-length v0, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v6, v0

    invoke-interface {v5, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------client log block count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n------mns log block count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    move-object v0, v4

    goto/16 :goto_4

    :cond_b
    move v2, v3

    goto/16 :goto_5

    :cond_c
    move-object v6, v1

    goto/16 :goto_1
.end method

.method public static prepareReportLogFile(JI)Ljava/io/File;
    .locals 20

    if-gez p2, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->prepareReportLogFile(J)Ljava/io/File;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_1
    sget-object v9, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    sget-object v10, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v2

    const-string v4, "report.log"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    const/4 v5, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v5, v0, :cond_2

    add-int/lit8 v8, v2, 0x1

    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    move-wide/from16 v0, p0

    invoke-virtual {v9, v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->isWorkFolderExists(J)Z

    move-result v2

    if-nez v2, :cond_4

    move-wide/from16 v0, p0

    invoke-virtual {v10, v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->isWorkFolderExists(J)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v13}, Ljava/util/List;->clear()V

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-wide/from16 v0, p0

    invoke-virtual {v9, v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v9, v2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    :cond_5
    invoke-virtual {v10, v4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v9, v4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    move-object v7, v4

    :goto_3
    if-eqz v2, :cond_6

    array-length v4, v2

    int-to-float v4, v4

    move v6, v4

    :goto_4
    if-eqz v7, :cond_7

    array-length v4, v7

    int-to-float v4, v4

    :goto_5
    add-float v15, v6, v4

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_8

    move v2, v8

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    move v6, v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    add-float v15, v6, v4

    div-float/2addr v6, v15

    const/high16 v16, 0x41c00000    # 24.0f

    mul-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v4, v15

    const/high16 v15, 0x41c00000    # 24.0f

    mul-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-nez v6, :cond_b

    if-eqz v2, :cond_b

    array-length v15, v2

    if-lez v15, :cond_b

    const/4 v6, 0x1

    add-int/lit8 v4, v4, -0x1

    :cond_9
    :goto_6
    if-eqz v2, :cond_c

    :cond_a
    :goto_7
    if-lez v6, :cond_c

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    array-length v15, v2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v2, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v13, v0, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v5, v0

    goto :goto_7

    :cond_b
    if-nez v4, :cond_9

    if-eqz v7, :cond_9

    array-length v15, v7

    if-lez v15, :cond_9

    const/4 v4, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_c
    move v2, v5

    if-eqz v7, :cond_e

    :cond_d
    :goto_8
    if-lez v4, :cond_e

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v7

    if-ge v5, v6, :cond_d

    array-length v5, v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v7, v5

    const/4 v6, 0x0

    invoke-interface {v14, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v2, v0

    goto :goto_8

    :cond_e
    const-wide/32 v4, 0x5265c00

    sub-long p0, p0, v4

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v5, v2

    move v2, v8

    goto/16 :goto_2

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------client log block count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "------\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v3, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n------mns log block count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "------\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v3, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    move-object v2, v3

    goto/16 :goto_0

    :cond_10
    move-object v7, v4

    goto/16 :goto_3
.end method

.method public static setInstance(Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;)V
    .locals 0

    sput-object p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->flush()V

    :cond_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->enabled:Z

    return v0
.end method

.method public final isFileTracerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracerEnabled:Z

    return v0
.end method

.method public final isLogcatTracerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracerEnabled:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/16 v4, 0x10

    const-string v0, "debug.file.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "debug.file.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Trace Level Changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->setTraceLevel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "client.debug.file.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "client.debug.file.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client File Trace Level Changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->setTraceLevel(I)V

    goto :goto_0

    :cond_2
    const-string v0, "debug.logcat.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "debug.logcat.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logcat Trace Level Changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;->setTraceLevel(I)V

    goto :goto_0

    :cond_3
    const-string v0, "client.debug.logcat.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "client.debug.logcat.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client Logcat Trace Level Changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;->setTraceLevel(I)V

    goto/16 :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->enabled:Z

    return-void
.end method

.method public final setFileTracerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->flush()V

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracerEnabled:Z

    return-void
.end method

.method public final setFileTracerLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->setTraceLevel(I)V

    return-void
.end method

.method public final setLogcatTracerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracerEnabled:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->flush()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->quit()V

    :cond_0
    return-void
.end method

.method public trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->isFileTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->isLogcatTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(MiLinkSDK)("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getClientAppInfo()Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
