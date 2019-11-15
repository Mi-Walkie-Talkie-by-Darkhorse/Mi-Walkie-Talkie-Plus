.class public abstract Lcom/amap/api/offlineservice/a;
.super Ljava/lang/Object;
.source "ServiceModule.java"


# instance fields
.field protected a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->showScr()V

    return-void
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public a(Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/offlineservice/a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapActivity;

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract c()Landroid/widget/RelativeLayout;
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method
