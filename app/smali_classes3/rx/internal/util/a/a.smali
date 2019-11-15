.class public abstract Lrx/internal/util/a/a;
.super Lrx/internal/util/a/b;
.source "ConcurrentCircularArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/b",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final a:I

.field private static final d:J

.field private static final e:I


# instance fields
.field protected final b:J

.field protected final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "sparse.shift"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lrx/internal/util/a/a;->a:I

    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    sget v0, Lrx/internal/util/a/a;->a:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lrx/internal/util/a/a;->e:I

    :goto_0
    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    const/16 v1, 0x20

    sget v2, Lrx/internal/util/a/a;->e:I

    sget v3, Lrx/internal/util/a/a;->a:I

    sub-int/2addr v2, v3

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    sput-wide v0, Lrx/internal/util/a/a;->d:J

    return-void

    :cond_0
    const/16 v1, 0x8

    if-ne v1, v0, :cond_1

    sget v0, Lrx/internal/util/a/a;->a:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lrx/internal/util/a/a;->e:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown pointer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Lrx/internal/util/a/b;-><init>()V

    invoke-static {p1}, Lrx/internal/util/a/i;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    int-to-long v2, v1

    iput-wide v2, p0, Lrx/internal/util/a/a;->b:J

    sget v1, Lrx/internal/util/a/a;->a:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/util/a/a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final a(J)J
    .locals 3

    iget-wide v0, p0, Lrx/internal/util/a/a;->b:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/util/a/a;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(JJ)J
    .locals 5

    sget-wide v0, Lrx/internal/util/a/a;->d:J

    and-long v2, p1, p3

    sget v4, Lrx/internal/util/a/a;->e:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected final a([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/util/a/a;->c:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, p3}, Lrx/internal/util/a/a;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method protected final a([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JTE;)V"
        }
    .end annotation

    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method protected final b(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/util/a/a;->c:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lrx/internal/util/a/a;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JTE;)V"
        }
    .end annotation

    sget-object v0, Lrx/internal/util/a/y;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method protected final c(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/util/a/a;->c:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lrx/internal/util/a/a;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/a;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
