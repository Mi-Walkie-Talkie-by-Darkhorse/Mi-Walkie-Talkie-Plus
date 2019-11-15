.class Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/HeartbeatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PayloadBuffer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method toTruncatedByteArray(I)[B
    .locals 2

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->count:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->buf:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method
