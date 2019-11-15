.class public Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;
.super Ljava/lang/Object;
.source "VideoThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mNativeThumbnail:J

.field private mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MediaThumbnail"

    sput-object v0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNativeThumbnail:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    return-void
.end method

.method private native CancelThumbnailsJni()V
.end method

.method private native ConstructThumbnailJni()J
.end method

.method private native DestructThumbnailJni()V
.end method

.method private native GenerateThumbnailsJni(Ljava/lang/String;Ljava/lang/String;III)Z
.end method

.method private OnReceiveAllComplete()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    invoke-interface {v0}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;->OnReceiveAllComplete()V

    :cond_0
    return-void
.end method

.method private OnReceivePngFile(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;->OnReceivePngFile(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public CancelThumbnails()V
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->TAG:Ljava/lang/String;

    const-string v1, "CancelThumbnails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNativeThumbnail:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->CancelThumbnailsJni()V

    invoke-direct {p0}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->DestructThumbnailJni()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    iput-wide v2, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNativeThumbnail:J

    :cond_0
    return-void
.end method

.method public GenerateThumbnails(Ljava/lang/String;Ljava/lang/String;IIILcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;)Z
    .locals 4

    sget-object v0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->TAG:Ljava/lang/String;

    const-string v1, "GenerateThumbnails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p6, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNotifier:Lcom/xiaomi/mediaprocess/VideoThumbnailHelper$VideoThumbnailNotifier;

    invoke-direct {p0}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->ConstructThumbnailJni()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNativeThumbnail:J

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->GenerateThumbnailsJni(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->DestructThumbnailJni()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/mediaprocess/VideoThumbnailHelper;->mNativeThumbnail:J

    return v0
.end method
