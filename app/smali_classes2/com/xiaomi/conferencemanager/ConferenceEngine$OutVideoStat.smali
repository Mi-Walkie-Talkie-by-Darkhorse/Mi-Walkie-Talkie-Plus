.class public Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;
.super Ljava/lang/Object;
.source "ConferenceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/ConferenceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutVideoStat"
.end annotation


# instance fields
.field public mBitrate:I

.field public mCaptureFrameRate:I

.field public mCodecName:Ljava/lang/String;

.field public mDistinctNacksRcvd:I

.field public mDistinctPacketsRetransmitted:I

.field public mEncodeFrameRate:I

.field public mHeight:I

.field public mIFramesSent:I

.field public mNacksRcvd:I

.field public mPayloadType:B

.field public mRTT:I

.field public mSendBandwidth:I

.field public mSendBitRateApp:I

.field public mSendBitRateAudio:I

.field public mSendBitRateTotal:I

.field public mSendBitRateVideo:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;BIIIIIIIIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mCodecName:Ljava/lang/String;

    iput-byte p2, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mPayloadType:B

    iput p3, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mBitrate:I

    iput p4, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mCaptureFrameRate:I

    iput p5, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mEncodeFrameRate:I

    iput p6, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mIFramesSent:I

    iput p7, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mWidth:I

    iput p8, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mHeight:I

    iput p9, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mRTT:I

    iput p10, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mNacksRcvd:I

    iput p11, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctNacksRcvd:I

    iput p12, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctPacketsRetransmitted:I

    iput p13, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateVideo:I

    iput p14, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateAudio:I

    move/from16 v0, p15

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateApp:I

    move/from16 v0, p16

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateTotal:I

    move/from16 v0, p17

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBandwidth:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nVideo Send{\nmBitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mBitrate:I

    div-int/lit16 v1, v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCaptureFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mCaptureFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmEncodeFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mEncodeFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmIFramesSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mIFramesSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRTT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mRTT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNacksRcvd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mNacksRcvd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDistinctNacksRcvd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctNacksRcvd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nPacketsRetransmitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctPacketsRetransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSendBandwidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSendBitRateVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSendBitRateAudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateAudio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSendBitRateTotal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
