.class public Lcom/xiaomi/channel/common/audio/CustomAudioMsg;
.super Ljava/lang/Object;
.source "CustomAudioMsg.java"


# instance fields
.field private length:J

.field private localPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->localPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->length:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->length:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public setLength(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->length:J

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/CustomAudioMsg;->localPath:Ljava/lang/String;

    return-void
.end method
