.class public final Lcom/blankj/utilcode/util/q;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# direct methods
.method public static a()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
