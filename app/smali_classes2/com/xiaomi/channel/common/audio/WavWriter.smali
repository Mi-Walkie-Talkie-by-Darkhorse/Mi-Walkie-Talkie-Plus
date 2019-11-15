.class public Lcom/xiaomi/channel/common/audio/WavWriter;
.super Ljava/lang/Object;
.source "WavWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bps:I

.field private channel:S

.field private quality:I

.field private sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/channel/common/audio/WavWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/channel/common/audio/WavWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ISI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/channel/common/audio/WavWriter;->sampleRate:I

    iput-short p2, p0, Lcom/xiaomi/channel/common/audio/WavWriter;->channel:S

    iput p3, p0, Lcom/xiaomi/channel/common/audio/WavWriter;->bps:I

    return-void
.end method


# virtual methods
.method public convertAudioFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v5, v0, [B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    if-eq v2, v7, :cond_0

    add-int/2addr v0, v2

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;

    invoke-direct {v2}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;-><init>()V

    add-int/lit8 v3, v0, 0x24

    iput v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->fileLength:I

    iput v6, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->FmtHdrLeth:I

    iput-short v6, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->BitsPerSample:S

    iget-short v3, p0, Lcom/xiaomi/channel/common/audio/WavWriter;->channel:S

    iput-short v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->Channels:S

    const/4 v3, 0x1

    iput-short v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->FormatTag:S

    iget v3, p0, Lcom/xiaomi/channel/common/audio/WavWriter;->sampleRate:I

    iput v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->SamplesPerSec:I

    iget-short v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->Channels:S

    iget-short v6, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->BitsPerSample:S

    mul-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    iput-short v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->BlockAlign:S

    iget-short v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->BlockAlign:S

    iget v6, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->SamplesPerSec:I

    mul-int/2addr v3, v6

    iput v3, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->AvgBytesPerSec:I

    iput v0, v2, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->DataHdrLeth:I

    invoke-virtual {v2}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->getHeader()[B

    move-result-object v0

    sget-boolean v2, Lcom/xiaomi/channel/common/audio/WavWriter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    array-length v2, v0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    array-length v2, v0

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    :goto_1
    if-eq v0, v7, :cond_2

    invoke-virtual {v4, v5, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Convert OK!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
