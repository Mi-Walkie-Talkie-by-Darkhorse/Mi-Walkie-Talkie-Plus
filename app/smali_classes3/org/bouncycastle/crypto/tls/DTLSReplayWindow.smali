.class Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;
.super Ljava/lang/Object;


# static fields
.field private static final VALID_SEQ_MASK:J = 0xffffffffffffL

.field private static final WINDOW_SIZE:J = 0x40L


# instance fields
.field private bitmap:J

.field private latestConfirmedSeq:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method


# virtual methods
.method reportAuthenticated(J)V
    .locals 7

    const-wide/16 v2, 0x40

    const-wide/16 v4, 0x1

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'seq\' out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v0, p1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v0, v0

    shl-long v0, v4, v0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v0, p1, v0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iput-wide v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    :goto_1
    iput-wide p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v0, v0

    shl-long v0, v2, v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    or-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    goto :goto_1
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method

.method shouldDiscard(J)Z
    .locals 9

    const/4 v0, 0x1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, p1

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x40

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-wide v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    const-wide/16 v6, 0x1

    long-to-int v1, v2

    shl-long v2, v6, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
