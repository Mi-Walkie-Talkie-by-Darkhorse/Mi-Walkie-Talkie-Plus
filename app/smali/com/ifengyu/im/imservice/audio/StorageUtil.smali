.class public Lcom/ifengyu/im/imservice/audio/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field public static final K:J = 0x400L

.field public static final M:J = 0x100000L

.field static final THRESHOLD_MIN_SPCAE:J = 0x1400000L

.field private static final THRESHOLD_WARNING_SPACE:J = 0x6400000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValid()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->checkStorageValid()Z

    return-void
.end method

.method public static getDirectoryByDirType(Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getDirectoryByDirType(Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadPath(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getReadPath(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemImagePath()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/nim/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/nim/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWritePath(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/ifengyu/im/imservice/audio/StorageUtil;->getWritePath(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWritePath(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;Z)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getWritePath(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static getWritePath(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/ifengyu/im/imservice/audio/StorageUtil;->getWritePath(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEnoughSpaceForWrite(Landroid/content/Context;Lcom/ifengyu/im/imservice/audio/StorageType;Z)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->isSdkStorageReady()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getAvailableExternalSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/audio/StorageType;->getStorageMinSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/32 v0, 0x6400000

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isExternalStorageExist()Z
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->isSdkStorageReady()Z

    move-result v0

    return v0
.end method

.method public static isInvalidVideoFile(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
