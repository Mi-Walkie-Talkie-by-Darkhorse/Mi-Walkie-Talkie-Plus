.class public Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;
.super Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;
.source "MapTilsCacheAndResManagerImpl.java"


# static fields
.field private static final CREATE_DIR_COUNT:I = 0x5

.field private static final Style_Update_Internal_Time:J = 0x2932e00L

.field private static volatile instance:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;


# instance fields
.field private mCacheDir:Ljava/lang/String;

.field private mCachePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMapExtResPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->instance:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mCacheDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mCacheDir:Ljava/lang/String;

    iput-object p1, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static copyAssertToTmp(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->decodeAssetResData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private copyAssetsFile(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map_assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    if-lez v0, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFilePreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getStyleIconsData(Ljava/lang/String;ILcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->getFilePreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v3}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    invoke-direct {p0, v3, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_0
    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V

    iget v6, v3, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    iget v7, p3, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    if-ge v6, v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLFileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v6, v0

    if-gtz v6, :cond_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLFileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_4
    invoke-direct {p0, p3, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map_assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->decodeAssetResData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->fullName:Ljava/lang/String;

    const-string v0, "_|\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->name:Ljava/lang/String;

    const/4 v1, 0x2

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    array-length v1, v0

    if-le v1, v4, :cond_2

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    iput v3, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p1, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addUdateRecorder(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "styles_icons_update_recorder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public declared-synchronized canUpate(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mContext:Landroid/content/Context;

    const-string v3, "styles_icons_update_recorder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public checkDir()V
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mCacheDir:Ljava/lang/String;

    const-string v3, "vmap4res"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    return-void
.end method

.method public getIconsData(Ljava/lang/String;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->getStyleIconsData(Ljava/lang/String;ILcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherResData(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map_assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v4, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    sub-int v5, v4, v2

    invoke-virtual {v3, v1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getOtherResDataFromDisk(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getPolyIconFilePath(Ljava/lang/String;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->getFilePreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v3}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    invoke-direct {p0, v3, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V

    iget v7, v3, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    iget v8, p2, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I

    if-ge v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/autonavi/ae/gmap/utils/GLFileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->copyAssetsFile(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->setRetFile(Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getStyleData(Ljava/lang/String;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->getStyleIconsData(Ljava/lang/String;ILcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->instance:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveFile(Ljava/lang/String;II[B)V
    .locals 6

    if-eqz p4, :cond_0

    array-length v0, p4

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->addUdateRecorder(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mMapExtResPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/autonavi/ae/gmap/utils/GLFileUtil;->writeDatasToFile(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setMapCachePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;->mCacheDir:Ljava/lang/String;

    return-void
.end method
