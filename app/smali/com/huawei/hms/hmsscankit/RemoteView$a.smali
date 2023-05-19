.class Lcom/huawei/hms/hmsscankit/RemoteView$a;
.super Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;
.source "RemoteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hmsscankit/RemoteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper<",
        "Lcom/huawei/hms/hmsscankit/RemoteView$b;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/app/Activity;

.field private h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/hmsscankit/RemoteView$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

.field private j:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/os/Bundle;

.field private q:Z

.field private r:Z

.field final synthetic s:Lcom/huawei/hms/hmsscankit/RemoteView;


# direct methods
.method constructor <init>(Lcom/huawei/hms/hmsscankit/RemoteView;Landroid/app/Activity;Landroid/view/ViewGroup;ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->s:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-direct {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->j:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    .line 3
    iput-object p3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->f:Landroid/view/ViewGroup;

    .line 4
    iput-object p2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->g:Landroid/app/Activity;

    .line 5
    iput-boolean p4, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->k:Z

    .line 6
    iput p5, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->m:I

    .line 7
    iput-object p6, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->o:Landroid/graphics/Rect;

    return-void
.end method

.method private a(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    const/16 p2, 0x1113

    if-ne p1, p2, :cond_0

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->s:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->access$1300(Lcom/huawei/hms/hmsscankit/RemoteView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->s:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-static {p2}, Lcom/huawei/hms/hmsscankit/RemoteView;->access$1300(Lcom/huawei/hms/hmsscankit/RemoteView;)Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    invoke-direct {p3}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setPhotoMode(Z)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->create()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/huawei/hms/hmsscankit/ScanUtil;->decodeWithBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->j:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    if-eqz p2, :cond_0

    .line 24
    invoke-interface {p2, p1}, Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;->onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Exception in error"

    .line 25
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "Exception in remoteview"

    .line 26
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p1, "RemoteException in remoteview"

    .line 27
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p1, "IllegalStateException in remoteview"

    .line 28
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->p:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;IILandroid/content/Intent;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->c(Z)V

    return-void
.end method

.method private a(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 15
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnErrorCallback(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "exception"

    const-string v0, "RemoteException"

    .line 16
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->n:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

    .line 18
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnLightVisbleCallBack(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "exception"

    const-string v0, "RemoteException"

    .line 20
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V
    .locals 1

    .line 10
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->j:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 12
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "exception"

    const-string v0, "RemoteException"

    .line 13
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Z
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->g:Landroid/app/Activity;

    return-object p0
.end method

.method private b()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->getLightStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "exception"

    const-string v1, "RemoteException"

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->pauseContinuouslyScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exception"

    const-string v1, "RemoteException"

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->l:Z

    return-void
.end method

.method static synthetic c(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->f()Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->resumeContinuouslyScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exception"

    const-string v1, "RemoteException"

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->d()V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->turnOffLight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "exception"

    const-string v1, "RemoteException"

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->c()V

    return-void
.end method

.method private f()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->turnOnLight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "exception"

    const-string v1, "RemoteException"

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->q:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->r:Z

    return-void
.end method

.method protected createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/hmsscankit/RemoteView$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RemoteException"

    const-string v1, "exception"

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    .line 4
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->k:Z

    if-nez v2, :cond_1

    iget v3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->m:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->o:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    const-string v2, "ScanKitRemoteView"

    const-string v3, "!mCustomed && mFormatValue == 0 && mRect == null"

    .line 6
    :try_start_1
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    const-string v3, "CustomedFlag"

    .line 7
    :try_start_2
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "FormatValue"

    .line 8
    :try_start_3
    iget v3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->m:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->o:Landroid/graphics/Rect;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_2

    const-string v3, "RectValue"

    .line 10
    :try_start_4
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->q:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v2, :cond_3

    const-string v3, "ScanOffSceenFlag"

    .line 12
    :try_start_5
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_3
    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->l:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v2, :cond_4

    const-string v3, "DeepLinkJumpFlag"

    .line 14
    :try_start_6
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->p:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    const-string v2, "TransType"

    const/4 v3, 0x3

    .line 16
    :try_start_7
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "return_bitmap"

    .line 17
    :try_start_8
    iget-boolean v3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->r:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->g:Landroid/app/Activity;

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Rc;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "localui"

    const/4 v3, 0x1

    .line 19
    :try_start_9
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->g:Landroid/app/Activity;

    invoke-static {v2}, Lcom/huawei/hms/hmsscankit/j;->c(Landroid/content/Context;)Lcom/huawei/hms/hmsscankit/api/IRemoteCreator;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    .line 21
    :cond_5
    iget-object v3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->g:Landroid/app/Activity;

    invoke-static {v3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteCreator;->newRemoteViewDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_1

    .line 22
    :catch_0
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    if-nez p1, :cond_6

    return-void

    .line 24
    :cond_6
    :try_start_a
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->j:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    if-eqz v2, :cond_7

    .line 25
    invoke-interface {p1, v2}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V

    .line 26
    new-instance p1, Lcom/huawei/hms/hmsscankit/h;

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/h;-><init>(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V

    .line 27
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnClickListener(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V

    .line 28
    :cond_7
    new-instance p1, Lcom/huawei/hms/hmsscankit/i;

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/i;-><init>(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V

    .line 29
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnClickListener(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V

    .line 30
    iget-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->n:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

    if-eqz p1, :cond_8

    .line 31
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    invoke-interface {v2, p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;->setOnLightVisbleCallBack(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 32
    :catch_1
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    new-instance v0, Lcom/huawei/hms/hmsscankit/RemoteView$b;

    iget-object v1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$a;->i:Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$b;-><init>(Landroid/view/ViewGroup;Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate;)V

    .line 34
    invoke-interface {p1, v0}, Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;)V

    :cond_9
    :goto_3
    return-void
.end method
