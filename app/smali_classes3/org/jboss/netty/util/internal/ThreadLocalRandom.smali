.class final Lorg/jboss/netty/util/internal/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/jboss/netty/util/internal/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field private initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalRandom$1;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-void
.end method

.method static current()Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;

    return-object v0
.end method


# virtual methods
.method protected next(I)I
    .locals 4

    iget-wide v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->rnd:J

    iget-wide v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setSeed(J)V
    .locals 5

    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->initialized:Z

    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;->rnd:J

    return-void
.end method
