.class public Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# instance fields
.field private availableSize:J

.field private rootPath:Ljava/io/File;

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;
    .locals 10

    const-wide/16 v8, 0x0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->setRootPath(Ljava/io/File;)V

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->setTotalSize(J)V

    mul-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->setAvailableSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v8, v9}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->setAvailableSize(J)V

    invoke-virtual {v0, v8, v9}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->setTotalSize(J)V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->availableSize:J

    return-wide v0
.end method

.method public getRootPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->rootPath:Ljava/io/File;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->totalSize:J

    return-wide v0
.end method

.method public setAvailableSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->availableSize:J

    return-void
.end method

.method public setRootPath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->rootPath:Ljava/io/File;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->totalSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v1, "[%s : %d / %d]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->rootPath:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->getAvailableSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->getTotalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->rootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
