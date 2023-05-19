.class Lcom/ifengyu/intercom/ui/b/f$b;
.super Ljava/lang/Object;
.source "GaoDeOfflineDownloadedChild.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/b/f;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/b/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$b;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/f$b;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/b/f;->g(Lcom/ifengyu/intercom/ui/b/f;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/f$b;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/b/f;->j(Lcom/ifengyu/intercom/ui/b/f;)Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/b/f$b;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/b/f;->i(Lcom/ifengyu/intercom/ui/b/f;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/f$b;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/b/f;->h(Lcom/ifengyu/intercom/ui/b/f;)Z

    return-void
.end method
