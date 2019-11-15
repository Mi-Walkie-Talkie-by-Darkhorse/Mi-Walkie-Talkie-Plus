.class public abstract Lcom/amap/api/mapcore/util/em;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amap/api/mapcore/util/el",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/amap/api/mapcore/util/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore/util/el;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/amap/api/mapcore/util/el;)Lcom/amap/api/mapcore/util/el;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/mapcore/util/el;->f:Lcom/amap/api/mapcore/util/el;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/em;->a(Lcom/amap/api/mapcore/util/el;)Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/em;->a:Lcom/amap/api/mapcore/util/el;

    iput-object v1, p1, Lcom/amap/api/mapcore/util/el;->f:Lcom/amap/api/mapcore/util/el;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/em;->a:Lcom/amap/api/mapcore/util/el;

    move-object p1, v0

    goto :goto_0
.end method
