.class final Lcom/amap/api/col/l3/en$1;
.super Lcom/amap/api/col/l3/eb;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/l3/eb<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/en;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/en;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/en$1;->a:Lcom/amap/api/col/l3/en;

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/eb;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/col/l3/en;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method protected final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/amap/api/col/l3/em;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/en$1;->a:Lcom/amap/api/col/l3/en;

    invoke-static {v0}, Lcom/amap/api/col/l3/en;->a(Lcom/amap/api/col/l3/en;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/en$1;->a:Lcom/amap/api/col/l3/en;

    invoke-static {v0}, Lcom/amap/api/col/l3/en;->a(Lcom/amap/api/col/l3/en;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
