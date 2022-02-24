.class final Lcom/amap/api/col/l3/de$b;
.super Lcom/amap/api/col/l3/ds;
.source "TileOverlayDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/de;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/ds<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/amap/api/col/l3/de$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/u;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/ae;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/eo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/amap/api/col/l3/u;IIILjava/util/List;ZLcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amap/api/col/l3/u;",
            "III",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;Z",
            "Lcom/amap/api/col/l3/ae;",
            "Lcom/amap/api/col/l3/eo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/ds;-><init>()V

    const/16 v0, 0x100

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/de$b;->f:I

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/de$b;->g:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/de$b;->h:I

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/col/l3/de$b;->e:Z

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/de$b;->i:Ljava/lang/ref/WeakReference;

    .line 7
    iput p3, p0, Lcom/amap/api/col/l3/de$b;->f:I

    .line 8
    iput p4, p0, Lcom/amap/api/col/l3/de$b;->g:I

    .line 9
    iput p5, p0, Lcom/amap/api/col/l3/de$b;->h:I

    .line 10
    iput-object p6, p0, Lcom/amap/api/col/l3/de$b;->j:Ljava/util/List;

    .line 11
    iput-boolean p7, p0, Lcom/amap/api/col/l3/de$b;->k:Z

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/de$b;->l:Ljava/lang/ref/WeakReference;

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/de$b;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private varargs e()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/de$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/de$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amap/api/col/l3/u;

    if-nez v2, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v1

    .line 3
    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v3

    .line 4
    invoke-interface {v2}, Lcom/amap/api/col/l3/u;->h()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/amap/api/col/l3/de$b;->d:I

    if-lez v1, :cond_2

    if-gtz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/amap/api/col/l3/de$b;->f:I

    iget v5, p0, Lcom/amap/api/col/l3/de$b;->g:I

    iget v6, p0, Lcom/amap/api/col/l3/de$b;->h:I

    iget-object v3, p0, Lcom/amap/api/col/l3/de$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/amap/api/col/l3/ae;

    iget-object v3, p0, Lcom/amap/api/col/l3/de$b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/amap/api/col/l3/eo;

    move v3, v4

    move v4, v1

    invoke-static/range {v2 .. v8}, Lcom/amap/api/col/l3/de;->a(Lcom/amap/api/col/l3/u;IIIILcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/de$b;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .line 2
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/de$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/u;

    iget v2, p0, Lcom/amap/api/col/l3/de$b;->d:I

    iget-boolean v3, p0, Lcom/amap/api/col/l3/de$b;->e:Z

    iget-object v4, p0, Lcom/amap/api/col/l3/de$b;->j:Ljava/util/List;

    iget-boolean v5, p0, Lcom/amap/api/col/l3/de$b;->k:Z

    iget-object v1, p0, Lcom/amap/api/col/l3/de$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/amap/api/col/l3/ae;

    iget-object v1, p0, Lcom/amap/api/col/l3/de$b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/amap/api/col/l3/eo;

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3/de;->a(Lcom/amap/api/col/l3/u;Ljava/util/List;IZLjava/util/List;ZLcom/amap/api/col/l3/ae;Lcom/amap/api/col/l3/eo;)Z

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method
