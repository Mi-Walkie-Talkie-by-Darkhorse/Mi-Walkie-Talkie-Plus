.class final Lcom/google/common/math/DoubleMath$MeanAccumulator;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "com.google.common.math.DoubleUtils"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/DoubleMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeanAccumulator"
.end annotation


# instance fields
.field private count:J

.field private mean:D


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/math/DoubleMath$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method add(D)V
    .locals 4

    invoke-static {p1, p2}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    iget-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    sub-double/2addr p1, v2

    long-to-double v0, v0

    div-double/2addr p1, v0

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-void
.end method

.method mean()D
    .locals 5

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-wide v0
.end method
