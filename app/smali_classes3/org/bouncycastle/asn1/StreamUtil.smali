.class Lorg/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateBodyLength(I)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_1

    move v1, v0

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_1
    if-ltz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method static calculateTagLength(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    new-array v2, v0, [B

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v3, p0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :cond_1
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v3, p0, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/16 v3, 0x7f

    if-gt p0, v3, :cond_1

    array-length v2, v2

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 5

    const-wide/32 v2, 0x7fffffff

    instance-of v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_4

    :try_start_0
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    long-to-int v0, v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    sget-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const v0, 0x7fffffff

    goto :goto_0

    :cond_5
    sget-wide v0, Lorg/bouncycastle/asn1/StreamUtil;->MAX_MEMORY:J

    long-to-int v0, v0

    goto :goto_0
.end method
