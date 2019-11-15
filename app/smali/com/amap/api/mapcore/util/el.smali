.class public Lcom/amap/api/mapcore/util/el;
.super Ljava/lang/Object;
.source "Inlist.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amap/api/mapcore/util/el",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public f:Lcom/amap/api/mapcore/util/el;
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

.method public static a(Lcom/amap/api/mapcore/util/el;Lcom/amap/api/mapcore/util/el;)Lcom/amap/api/mapcore/util/el;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amap/api/mapcore/util/el",
            "<*>;>(TT;TT;)TT;"
        }
    .end annotation

    iget-object v0, p1, Lcom/amap/api/mapcore/util/el;->f:Lcom/amap/api/mapcore/util/el;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'item\' is a list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p0, p1, Lcom/amap/api/mapcore/util/el;->f:Lcom/amap/api/mapcore/util/el;

    return-object p1
.end method
