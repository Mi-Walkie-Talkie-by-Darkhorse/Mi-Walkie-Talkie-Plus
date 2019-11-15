.class public Lcom/ifengyu/im/imservice/audio/ExternalStorage;
.super Ljava/lang/Object;
.source "ExternalStorage.java"


# static fields
.field protected static NO_MEDIA_FILE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ExternalStorage"

.field private static instance:Lcom/ifengyu/im/imservice/audio/ExternalStorage;


# instance fields
.field private context:Landroid/content/Context;

.field private hasPermission:Z

.field private sdkStorageRoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".nomedia"

    sput-object v0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->NO_MEDIA_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->hasPermission:Z

    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "ExternalStorage"

    const-string v2, "checkMPermission context null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ExternalStorage"

    const-string v2, "without permission to access storage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createNoMediaFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->NO_MEDIA_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createSubFolders()V
    .locals 7

    const/4 v1, 0x1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/audio/StorageType;->values()[Lcom/ifengyu/im/imservice/audio/StorageType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ifengyu/im/imservice/audio/StorageType;->getStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->makeDirectory(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->createNoMediaFile(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ifengyu/im/imservice/audio/ExternalStorage;
    .locals 2

    const-class v1, Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->instance:Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->instance:Lcom/ifengyu/im/imservice/audio/ExternalStorage;

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->instance:Lcom/ifengyu/im/imservice/audio/ExternalStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getResidualSpace(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private loadStorageState(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    return-void
.end method

.method private makeDirectory(Ljava/lang/String;)Z
    .locals 2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private pathForName(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;ZZ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getDirectoryByDirType(Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-nez p3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public checkStorageValid()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->hasPermission:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->hasPermission:Z

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->hasPermission:Z

    if-eqz v0, :cond_1

    const-string v0, "ExternalStorage"

    const-string v1, "get permission to access storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->createSubFolders()V

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->hasPermission:Z

    goto :goto_0
.end method

.method public getAvailableExternalSize()J
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->getResidualSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDirectoryByDirType(Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/audio/StorageType;->getStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadPath(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->pathForName(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWritePath(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->pathForName(Ljava/lang/String;Lcom/ifengyu/im/imservice/audio/StorageType;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->hasPermission:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->loadStorageState(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->createSubFolders()V

    return-void
.end method

.method public isSdkStorageReady()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/audio/ExternalStorage;->sdkStorageRoot:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
