.class final Lcom/amap/api/col/l3/fu$a;
.super Ljava/lang/Object;
.source "TraceResultPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/fu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/fu;IIILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/fu$a;->a:Lcom/amap/api/col/l3/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/fu$a;->b:I

    .line 3
    iput p1, p0, Lcom/amap/api/col/l3/fu$a;->c:I

    .line 4
    iput p1, p0, Lcom/amap/api/col/l3/fu$a;->d:I

    .line 5
    iput p1, p0, Lcom/amap/api/col/l3/fu$a;->e:I

    .line 6
    iput p1, p0, Lcom/amap/api/col/l3/fu$a;->f:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/fu$a;->h:Ljava/util/List;

    .line 8
    iput p3, p0, Lcom/amap/api/col/l3/fu$a;->b:I

    .line 9
    iput-object p5, p0, Lcom/amap/api/col/l3/fu$a;->g:Ljava/util/HashMap;

    .line 10
    iput p2, p0, Lcom/amap/api/col/l3/fu$a;->c:I

    .line 11
    iput p4, p0, Lcom/amap/api/col/l3/fu$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/fu$a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 5

    .line 2
    iget v0, p0, Lcom/amap/api/col/l3/fu$a;->d:I

    :goto_0
    iget v1, p0, Lcom/amap/api/col/l3/fu$a;->b:I

    const-string v2, "lineID"

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/fu$a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/col/l3/fu$a;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v3, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/amap/api/col/l3/fu$a;->d:I

    iput v1, v3, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v4, p0, Lcom/amap/api/col/l3/fu$a;->c:I

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v1, p0, Lcom/amap/api/col/l3/fu$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/fu$a;->d:I

    iget v1, p0, Lcom/amap/api/col/l3/fu$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/fu$a;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3/fu$a;->d:I

    iget v1, p0, Lcom/amap/api/col/l3/fu$a;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget v0, p0, Lcom/amap/api/col/l3/fu$a;->f:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/fu$a;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/amap/api/col/l3/fr;->a(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/amap/api/col/l3/fu$a;->h:Ljava/util/List;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0x65

    iput v3, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget v0, p0, Lcom/amap/api/col/l3/fu$a;->e:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/amap/api/col/l3/fu$a;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/l3/fu$a;->c:I

    const-string v1, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/fu;->a(Landroid/os/Handler;ILjava/lang/String;)V

    :cond_2
    return-void
.end method
