.class public Lcom/xiaomi/mediaprocess/MediaProcess;
.super Ljava/lang/Object;
.source "MediaProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mediaprocess/MediaProcess$Callback;
    }
.end annotation


# static fields
.field public static final FILTER_SAMPLE_PARAMS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MediaProcess"

    sput-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->TAG:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.wali.live.videofilter.basic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.wali.live.videofilter.sweet"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.wali.live.videofilter.crema"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.wali.live.videofilter.nashville"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.wali.live.videofilter.aden"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.wali.live.videofilter.gingham"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.wali.live.videofilter.stinson"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.wali.live.videofilter.clarendon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.wali.live.videofilter.juno"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.wali.live.videofilter.dogpatch"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.wali.live.videofilter.gray"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->FILTER_SAMPLE_PARAMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelmediaconvert(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "cancel mediaconvert "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/mediaprocess/MediaProcess;->cancelmediaconvertJni(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native cancelmediaconvertJni(Ljava/lang/String;)I
.end method

.method public static mediaconvert(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;IIJJFLjava/lang/String;JJFFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I
    .locals 3

    sget-object v0, Lcom/xiaomi/mediaprocess/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "mediaconvert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p21}, Lcom/xiaomi/mediaprocess/MediaProcess;->mediaconvertJni(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;IIJJFLjava/lang/String;JJFFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I

    move-result v0

    return v0
.end method

.method private static native mediaconvertJni(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;IIJJFLjava/lang/String;JJFFLcom/xiaomi/mediaprocess/MediaProcess$Callback;)I
.end method
