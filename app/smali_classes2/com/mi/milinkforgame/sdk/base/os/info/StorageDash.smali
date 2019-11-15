.class public Lcom/mi/milinkforgame/sdk/base/os/info/StorageDash;
.super Ljava/lang/Object;
.source "StorageDash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalInfo()Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageDash;->hasExternalReadable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->fromFile(Ljava/io/File;)Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInnerInfo()Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;->fromFile(Ljava/io/File;)Lcom/mi/milinkforgame/sdk/base/os/info/StorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static hasExternal()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasExternalReadable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
