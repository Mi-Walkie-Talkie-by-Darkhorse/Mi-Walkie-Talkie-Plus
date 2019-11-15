.class abstract Lrx/internal/util/a/q;
.super Lrx/internal/util/a/o;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/o",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile f:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lrx/internal/util/a/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final c()J
    .locals 2

    iget-wide v0, p0, Lrx/internal/util/a/q;->f:J

    return-wide v0
.end method

.method protected final e(J)V
    .locals 1

    iput-wide p1, p0, Lrx/internal/util/a/q;->f:J

    return-void
.end method
