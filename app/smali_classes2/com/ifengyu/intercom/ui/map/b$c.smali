.class Lcom/ifengyu/intercom/ui/map/b$c;
.super Ljava/lang/Object;
.source "OsmMapOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b$c;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/b$c;->a:Lcom/ifengyu/intercom/ui/map/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/bean/BeanUserLocation;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$c;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->d(Lcom/ifengyu/intercom/ui/map/b;)Lcom/ifengyu/intercom/ui/map/e/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$c;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->c(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method
