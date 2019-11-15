.class public Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
.super Ljava/lang/Object;
.source "MP4Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/utils/MP4Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MP4VideoInfo"
.end annotation


# instance fields
.field public audioBitRate:I

.field public audioMediaName:Ljava/lang/String;

.field public frameRate:I

.field public height:I

.field public keyFrameInterval:I

.field public samplingRate:I

.field public videoBitRate:I

.field public videoMediaName:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->videoMediaName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->audioMediaName:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->keyFrameInterval:I

    iput p4, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->frameRate:I

    iput p5, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->samplingRate:I

    iput p6, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->videoBitRate:I

    iput p7, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->audioBitRate:I

    iput p8, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->width:I

    iput p9, p0, Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;->height:I

    return-void
.end method
