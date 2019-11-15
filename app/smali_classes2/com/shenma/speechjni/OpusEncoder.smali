.class public Lcom/shenma/speechjni/OpusEncoder;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:[B


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shenma/speechjni/OpusEncoder;->a:J

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shenma/speechjni/OpusEncoder;->b:[B

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/shenma/speechjni/OpusEncoder;->create(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shenma/speechjni/OpusEncoder;->a:J

    return-void
.end method

.method protected static native create(IIII)J
.end method

.method protected static native encode(J[S[B)I
.end method


# virtual methods
.method public declared-synchronized a([S)[B
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/shenma/speechjni/OpusEncoder;->a:J

    iget-object v2, p0, Lcom/shenma/speechjni/OpusEncoder;->b:[B

    invoke-static {v0, v1, p1, v2}, Lcom/shenma/speechjni/OpusEncoder;->encode(J[S[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/shenma/speechjni/OpusEncoder;->b:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
