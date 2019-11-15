.class abstract Lrx/internal/util/a/e;
.super Lrx/internal/util/a/g;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/g",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lrx/internal/util/a/e;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/a/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/a/e;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lrx/internal/util/a/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 2

    iget-wide v0, p0, Lrx/internal/util/a/e;->f:J

    return-wide v0
.end method

.method protected final b(JJ)Z
    .locals 9

    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/e;->e:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
