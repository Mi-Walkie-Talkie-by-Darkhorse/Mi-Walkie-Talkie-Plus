.class final Lcom/amap/api/col/l3/af;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/x;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Lcom/amap/api/col/l3/u;

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
.method constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->e:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/col/l3/af;->f:Z

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->g:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->h:Z

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->i:Z

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/af;->j:Z

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->k:Z

    .line 11
    iput v1, p0, Lcom/amap/api/col/l3/af;->l:I

    .line 12
    iput v0, p0, Lcom/amap/api/col/l3/af;->m:I

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/col/l3/af;->n:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/col/l3/af;->o:Z

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/col/l3/af;->p:Z

    .line 16
    new-instance v0, Lcom/amap/api/col/l3/af$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/af$1;-><init>(Lcom/amap/api/col/l3/af;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    .line 17
    iput-object p1, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/af;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/af;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/af;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/af;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/af;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/af;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/af;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/af;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/af;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/af;->n:Z

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/af;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/af;->k:Z

    return p0
.end method


# virtual methods
.method public final getLogoMarginRate(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->k(I)F

    move-result p1

    return p1
.end method

.method public final getLogoPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/af;->l:I

    return v0
.end method

.method public final getZoomPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/af;->m:I

    return v0
.end method

.method public final isCompassEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->i:Z

    return v0
.end method

.method public final isGestureScaleByMapCenter()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->p:Z

    return v0
.end method

.method public final isIndoorSwitchEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->n:Z

    return v0
.end method

.method public final isLogoEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->k:Z

    return v0
.end method

.method public final isMyLocationButtonEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->f:Z

    return v0
.end method

.method public final isRotateGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->c:Z

    return v0
.end method

.method public final isScaleControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->j:Z

    return v0
.end method

.method public final isScrollGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->d:Z

    return v0
.end method

.method public final isTiltGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->e:Z

    return v0
.end method

.method public final isZoomControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->h:Z

    return v0
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->g:Z

    return v0
.end method

.method public final isZoomInByScreenCenter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/af;->o:Z

    return v0
.end method

.method public final setAllGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->c:Z

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->g:Z

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->d:Z

    return-void
.end method

.method public final setCompassEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->i:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setGestureScaleByMapCenter(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->p:Z

    return-void
.end method

.method public final setIndoorSwitchEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->n:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setLogoBottomMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->i(I)V

    return-void
.end method

.method public final setLogoEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->k:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setLogoLeftMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->j(I)V

    return-void
.end method

.method public final setLogoMarginRate(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/l3/u;->a(IF)V

    return-void
.end method

.method public final setLogoPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/af;->l:I

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->h(I)V

    return-void
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->f:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setRotateGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->c:Z

    return-void
.end method

.method public final setScaleControlsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->j:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setScrollGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->d:Z

    return-void
.end method

.method public final setTiltGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->e:Z

    return-void
.end method

.method public final setZoomControlsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->h:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/af;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->g:Z

    return-void
.end method

.method public final setZoomInByScreenCenter(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/af;->o:Z

    return-void
.end method

.method public final setZoomPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/af;->m:I

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/af;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->f(I)V

    return-void
.end method
