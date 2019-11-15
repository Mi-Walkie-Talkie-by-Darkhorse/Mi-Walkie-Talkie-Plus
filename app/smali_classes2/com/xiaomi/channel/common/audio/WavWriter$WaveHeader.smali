.class public Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;
.super Ljava/lang/Object;
.source "WavWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/WavWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaveHeader"
.end annotation


# instance fields
.field public AvgBytesPerSec:I

.field public BitsPerSample:S

.field public BlockAlign:S

.field public Channels:S

.field public DataHdrID:[C

.field public DataHdrLeth:I

.field public FmtHdrID:[C

.field public FmtHdrLeth:I

.field public FormatTag:S

.field public SamplesPerSec:I

.field public final fileID:[C

.field public fileLength:I

.field public wavTag:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->fileID:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->wavTag:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->FmtHdrID:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->DataHdrID:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method

.method private WriteChar(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-char v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private WriteInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shl-int/lit8 v2, p2, 0x8

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shl-int/lit8 v2, p2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shl-int/lit8 v2, p2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private WriteShort(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    shl-int/lit8 v2, p2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shl-int/lit8 v2, p2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public getHeader()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->fileID:[C

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->fileLength:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->wavTag:[C

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->FmtHdrID:[C

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->FmtHdrLeth:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->FormatTag:S

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->Channels:S

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->SamplesPerSec:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->AvgBytesPerSec:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->BlockAlign:S

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->BitsPerSample:S

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteShort(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->DataHdrID:[C

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteChar(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->DataHdrLeth:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/channel/common/audio/WavWriter$WaveHeader;->WriteInt(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1
.end method
