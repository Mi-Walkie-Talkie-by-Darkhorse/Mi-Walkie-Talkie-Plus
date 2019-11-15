.class final Lrx/internal/util/d$2;
.super Lrx/internal/util/a;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/a",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrx/internal/util/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lrx/internal/util/d$2;->c()Lrx/internal/util/a/j;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lrx/internal/util/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/a/j",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lrx/internal/util/a/j;

    sget v1, Lrx/internal/util/d;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/a/j;-><init>(I)V

    return-object v0
.end method
