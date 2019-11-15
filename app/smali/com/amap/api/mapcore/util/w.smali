.class Lcom/amap/api/mapcore/util/w;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/o;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Lcom/amap/api/mapcore/util/l;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->k:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/w;->l:I

    iput v0, p0, Lcom/amap/api/mapcore/util/w;->m:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->o:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/w;->p:Z

    new-instance v0, Lcom/amap/api/mapcore/util/w$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/w$1;-><init>(Lcom/amap/api/mapcore/util/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->k:Z

    return v0
.end method


# virtual methods
.method public getLogoMarginRate(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->l(I)F

    move-result v0

    return v0
.end method

.method public getLogoPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/w;->l:I

    return v0
.end method

.method public getZoomPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/w;->m:I

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    return v0
.end method

.method public isGestureScaleByMapCenter()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->p:Z

    return v0
.end method

.method public isIndoorSwitchEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    return v0
.end method

.method public isLogoEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->k:Z

    return v0
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    return v0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->c:Z

    return v0
.end method

.method public isScaleControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->d:Z

    return v0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->e:Z

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->g:Z

    return v0
.end method

.method public isZoomInByScreenCenter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/w;->o:Z

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/w;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->i:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setGestureScaleByMapCenter(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->p:Z

    return-void
.end method

.method public setIndoorSwitchEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->n:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLogoBottomMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->j(I)V

    return-void
.end method

.method public setLogoEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->k:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLogoLeftMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->k(I)V

    return-void
.end method

.method public setLogoMarginRate(IF)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore/util/l;->a(IF)V

    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/w;->l:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->i(I)V

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->f:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->c:Z

    return-void
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->j:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->d:Z

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->e:Z

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->h:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->g:Z

    return-void
.end method

.method public setZoomInByScreenCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/w;->o:Z

    return-void
.end method

.method public setZoomPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/w;->m:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->g(I)V

    return-void
.end method
