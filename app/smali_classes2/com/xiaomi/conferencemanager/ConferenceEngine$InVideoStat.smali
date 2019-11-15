.class public Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
.super Ljava/lang/Object;
.source "ConferenceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/ConferenceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InVideoStat"
.end annotation


# instance fields
.field public mBitrate:I

.field public mCodecName:Ljava/lang/String;

.field public mDistinctNacksRequested:I

.field public mDistinctNacksTransmitted:I

.field public mFecSuccessRate:I

.field public mFrameRate:I

.field public mFramesDecoded:I

.field public mFramesDisplay:I

.field public mHeight:I

.field public mNacksSent:I

.field public mPacketsLost:I

.field public mPacketsReceived:I

.field public mPayloadType:B

.field public mRTT:I

.field public mRecvBandwidth:I

.field public mRecvBitRateApp:I

.field public mRecvBitRateAudio:I

.field public mRecvBitRateTotal:I

.field public mRecvBitRateVideo:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;BIIIIIIIIIIIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mCodecName:Ljava/lang/String;

    iput-byte p2, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPayloadType:B

    iput p3, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mBitrate:I

    iput p4, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsReceived:I

    iput p5, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsLost:I

    iput p6, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFrameRate:I

    iput p7, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDecoded:I

    iput p8, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDisplay:I

    iput p9, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mWidth:I

    iput p10, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mHeight:I

    iput p11, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRTT:I

    iput p12, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFecSuccessRate:I

    iput p13, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mNacksSent:I

    iput p14, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksRequested:I

    move/from16 v0, p15

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksTransmitted:I

    move/from16 v0, p16

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateVideo:I

    move/from16 v0, p17

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateAudio:I

    move/from16 v0, p18

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateApp:I

    move/from16 v0, p19

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateTotal:I

    move/from16 v0, p20

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBandwidth:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nVideo Recv{\nmBitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mBitrate:I

    div-int/lit16 v1, v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmPacketsReceived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmPacketsLost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmFramesDecoded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDecoded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmFramesDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDisplay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmFecSuccessRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFecSuccessRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNacksSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mNacksSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nNacksRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksRequested:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nNacksTransmitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksTransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRecBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRecVideoBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRecAudioBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateAudio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRecTotalBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
