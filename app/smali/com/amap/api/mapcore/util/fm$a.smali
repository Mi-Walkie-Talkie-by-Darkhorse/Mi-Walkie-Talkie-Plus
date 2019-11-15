.class Lcom/amap/api/mapcore/util/fm$a;
.super Ljava/lang/Object;
.source "TraceResultPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/fm;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/fm;IIILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fm$a;->a:Lcom/amap/api/mapcore/util/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->b:I

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->c:I

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->d:I

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->e:I

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fm$a;->h:Ljava/util/List;

    iput p3, p0, Lcom/amap/api/mapcore/util/fm$a;->b:I

    iput-object p5, p0, Lcom/amap/api/mapcore/util/fm$a;->g:Ljava/util/HashMap;

    iput p2, p0, Lcom/amap/api/mapcore/util/fm$a;->c:I

    iput p4, p0, Lcom/amap/api/mapcore/util/fm$a;->e:I

    return-void
.end method

.method private a(Landroid/os/Handler;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/amap/api/mapcore/util/fm$a;->d:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "lineID"

    iget v3, p0, Lcom/amap/api/mapcore/util/fm$a;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->d:I

    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fm$a;->f:I

    return-void
.end method

.method private b(Landroid/os/Handler;)V
    .locals 4

    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fm$a;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fj;->a(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fm$a;->h:Ljava/util/List;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->e:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "lineID"

    iget v3, p0, Lcom/amap/api/mapcore/util/fm$a;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fm$a;->a:Lcom/amap/api/mapcore/util/fm;

    iget v1, p0, Lcom/amap/api/mapcore/util/fm$a;->c:I

    const-string v2, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/fm;->a(Landroid/os/Handler;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fm$a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 3

    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->d:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->b:I

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fm$a;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fm$a;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/fm$a;->a(Landroid/os/Handler;Ljava/util/List;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/fm$a;->d:I

    iget v1, p0, Lcom/amap/api/mapcore/util/fm$a;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fm$a;->b(Landroid/os/Handler;)V

    :cond_1
    return-void
.end method
