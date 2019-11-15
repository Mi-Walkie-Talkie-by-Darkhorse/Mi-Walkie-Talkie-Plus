.class public Lcom/xiaomi/utils/MP4Utils;
.super Ljava/lang/Object;
.source "MP4Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mp4Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concateMP4Files([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Mp4Utils"

    const-string v1, "concate MP4 files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/xiaomi/utils/MP4Utils;->concateMP4FilesJni([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mp4Utils"

    const-string v1, "concate MP4 files failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Mp4Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " concate MP4 files succeed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native concateMP4FilesJni([Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static probeMP4VideoInfo(Ljava/lang/String;)Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
    .locals 2

    const-string v0, "Mp4Utils"

    const-string v1, "probe MP4 video information"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/utils/MP4Utils;->probeMP4VideoInfoJni(Ljava/lang/String;)Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;

    move-result-object v0

    return-object v0
.end method

.method private static native probeMP4VideoInfoJni(Ljava/lang/String;)Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
.end method
