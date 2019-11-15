.class public final Lcom/amap/api/col/sl/dp;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/dp$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/sl/dq;

.field private b:Lcom/amap/api/col/sl/ds;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/ds;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/sl/dp;-><init>(Lcom/amap/api/col/sl/ds;B)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/sl/ds;B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/sl/dp;->b:Lcom/amap/api/col/sl/ds;

    iget-object v0, p1, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/col/sl/dq;

    iget-object v2, p0, Lcom/amap/api/col/sl/dp;->b:Lcom/amap/api/col/sl/ds;

    iget v2, v2, Lcom/amap/api/col/sl/ds;->f:I

    iget-object v3, p0, Lcom/amap/api/col/sl/dp;->b:Lcom/amap/api/col/sl/ds;

    iget v3, v3, Lcom/amap/api/col/sl/ds;->g:I

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/col/sl/dq;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/amap/api/col/sl/dp;->a:Lcom/amap/api/col/sl/dq;

    iget-object v0, p0, Lcom/amap/api/col/sl/dp;->a:Lcom/amap/api/col/sl/dq;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/dq;->b()V

    iget-object v0, p0, Lcom/amap/api/col/sl/dp;->a:Lcom/amap/api/col/sl/dq;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/dq;->a()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/sl/dp$a;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/dp;->a:Lcom/amap/api/col/sl/dq;

    iget-object v1, p0, Lcom/amap/api/col/sl/dp;->b:Lcom/amap/api/col/sl/ds;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/dp;->b:Lcom/amap/api/col/sl/ds;

    invoke-virtual {v2}, Lcom/amap/api/col/sl/ds;->c()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/dp;->b:Lcom/amap/api/col/sl/ds;

    invoke-virtual {v3}, Lcom/amap/api/col/sl/ds;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amap/api/col/sl/dq;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/col/sl/dp$a;)V

    return-void
.end method
