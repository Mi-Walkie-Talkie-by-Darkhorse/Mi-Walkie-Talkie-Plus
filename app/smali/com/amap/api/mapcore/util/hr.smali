.class public Lcom/amap/api/mapcore/util/hr;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/hr$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/hs;

.field private b:Lcom/amap/api/mapcore/util/hv;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/hv;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/hr;-><init>(Lcom/amap/api/mapcore/util/hv;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/hv;JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/hr;->b:Lcom/amap/api/mapcore/util/hv;

    iget-object v0, p1, Lcom/amap/api/mapcore/util/hv;->j:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/mapcore/util/hs;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/hr;->b:Lcom/amap/api/mapcore/util/hv;

    iget v2, v2, Lcom/amap/api/mapcore/util/hv;->h:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/hr;->b:Lcom/amap/api/mapcore/util/hv;

    iget v3, v3, Lcom/amap/api/mapcore/util/hv;->i:I

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/hs;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/hr;->a:Lcom/amap/api/mapcore/util/hs;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hr;->a:Lcom/amap/api/mapcore/util/hs;

    invoke-virtual {v0, p4, p5}, Lcom/amap/api/mapcore/util/hs;->b(J)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hr;->a:Lcom/amap/api/mapcore/util/hs;

    invoke-virtual {v0, p2, p3}, Lcom/amap/api/mapcore/util/hs;->a(J)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/util/hv;->j:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hr;->a:Lcom/amap/api/mapcore/util/hs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hs;->a()V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/hr$a;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/hr;->a:Lcom/amap/api/mapcore/util/hs;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/hr;->b:Lcom/amap/api/mapcore/util/hv;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/hv;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/hr;->b:Lcom/amap/api/mapcore/util/hv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/hv;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/hr;->b:Lcom/amap/api/mapcore/util/hv;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/hv;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amap/api/mapcore/util/hs;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/mapcore/util/hr$a;)V

    return-void
.end method
