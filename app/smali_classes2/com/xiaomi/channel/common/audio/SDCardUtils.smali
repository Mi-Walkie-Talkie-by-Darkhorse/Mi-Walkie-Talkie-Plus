.class public Lcom/xiaomi/channel/common/audio/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDCardAvailableBytes()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SDCardUtils;->isSDCardBusy()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x4

    sub-long/2addr v0, v4

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static isSDCardBusy()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardFull()Z
    .locals 4

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SDCardUtils;->getSDCardAvailableBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardUnavailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSDCardUseful()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SDCardUtils;->isSDCardBusy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SDCardUtils;->isSDCardFull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/SDCardUtils;->isSDCardUnavailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
