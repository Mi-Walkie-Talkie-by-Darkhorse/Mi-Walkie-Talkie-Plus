.class public Lcom/huawei/hms/scankit/q;
.super Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub;
.source "IRemoteCustomedViewDelegateImpl.java"

# interfaces
.implements Lcom/huawei/hms/scankit/A;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:Ljava/lang/String; = "q"

.field protected static b:Z = false


# instance fields
.field private volatile c:Lcom/huawei/hms/scankit/p/Kc;

.field protected d:I

.field protected e:Landroid/content/Context;

.field protected f:Lcom/huawei/hms/scankit/ProviderRemoteView;

.field protected g:Landroid/view/TextureView;

.field protected h:Lcom/huawei/hms/scankit/e;

.field protected i:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

.field protected j:Landroid/hardware/SensorManager;

.field protected k:Landroid/view/View$OnClickListener;

.field protected l:Z

.field protected final m:Ljava/lang/Float;

.field protected n:Ljava/lang/Boolean;

.field protected o:Landroid/app/AlertDialog;

.field protected p:Landroid/graphics/Rect;

.field private q:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

.field protected r:Z

.field private s:Landroid/view/OrientationEventListener;

.field private t:Z

.field protected u:Z

.field protected v:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

.field protected w:Landroid/widget/LinearLayout;

.field x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;ZZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteViewDelegate$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->c:Lcom/huawei/hms/scankit/p/Kc;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/huawei/hms/scankit/q;->d:I

    .line 4
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/q;->l:Z

    const/high16 v2, 0x42200000    # 40.0f

    .line 5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hms/scankit/q;->m:Ljava/lang/Float;

    .line 6
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/q;->r:Z

    .line 7
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/q;->x:Z

    .line 8
    iput-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    .line 9
    iput p2, p0, Lcom/huawei/hms/scankit/q;->d:I

    .line 10
    iput-object p4, p0, Lcom/huawei/hms/scankit/q;->q:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    .line 11
    instance-of p1, p3, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 12
    check-cast p3, Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/huawei/hms/scankit/q;->p:Landroid/graphics/Rect;

    goto :goto_0

    .line 13
    :cond_0
    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->p:Landroid/graphics/Rect;

    .line 14
    :goto_0
    iput-boolean p5, p0, Lcom/huawei/hms/scankit/q;->r:Z

    .line 15
    iput-boolean p6, p0, Lcom/huawei/hms/scankit/q;->t:Z

    .line 16
    iput-boolean p7, p0, Lcom/huawei/hms/scankit/q;->u:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "window"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 22
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/huawei/hms/scankit/util/b;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 25
    sget-object p0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "initSurfaceView: is in MultiWindowMode"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    return-object v1
.end method

.method private a(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->d()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Aa;->a(I)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->b(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, -0x1

    const/high16 v1, 0x44f00000    # 1920.0f

    const/high16 v2, 0x44870000    # 1080.0f

    const/16 v3, 0x11

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/scankit/q;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 8
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 9
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 11
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/scankit/q;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 14
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 15
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 19
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/q;->a(I)V

    return-void
.end method

.method private a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "ScankitRemoteS"

    const-string p2, "bitmap is null"

    .line 49
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 50
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 51
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "FormatValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 52
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v3, "TransType"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 53
    sput p2, Lcom/huawei/hms/hmsscankit/DetailRect;->HMSSCAN_SDK_VALUE:I

    const/4 v3, 0x2

    if-lt p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 54
    invoke-static {v2}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 55
    :cond_3
    :goto_1
    invoke-static {}, Lcom/huawei/hms/scankit/D;->a()Lcom/huawei/hms/scankit/D;

    move-result-object v3

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/huawei/hms/scankit/q;->c:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual {v3, p1, v2, v1, v4}, Lcom/huawei/hms/scankit/D;->b(Landroid/graphics/Bitmap;IZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-nez p2, :cond_4

    .line 56
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->a([Lcom/huawei/hms/ml/scan/HmsScan;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    .line 57
    :cond_4
    array-length p2, p1

    if-nez p2, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->i()V

    goto :goto_2

    .line 59
    :cond_5
    aget-object p2, p1, v0

    if-eqz p2, :cond_6

    .line 60
    aget-object p2, p1, v0

    iget-object p2, p2, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 61
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->i()V

    :cond_6
    :goto_2
    return-object p1
.end method


# virtual methods
.method protected a(Landroid/graphics/Point;)V
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 30
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 31
    iget-object v2, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/app/Activity;)Z

    move-result v2

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/high16 v5, 0x44f00000    # 1920.0f

    const/high16 v6, 0x44870000    # 1080.0f

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 32
    sput-boolean v2, Lcom/huawei/hms/scankit/q;->b:Z

    div-float/2addr v1, v5

    div-float/2addr p1, v6

    cmpl-float v2, v1, p1

    if-lez v2, :cond_0

    mul-float v1, v1, v6

    float-to-int p1, v1

    .line 33
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 34
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 35
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    mul-float p1, p1, v5

    float-to-int p1, p1

    .line 36
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 38
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 39
    sput-boolean v2, Lcom/huawei/hms/scankit/q;->b:Z

    div-float/2addr v1, v6

    div-float/2addr p1, v5

    cmpl-float v2, v1, p1

    if-lez v2, :cond_2

    mul-float v1, v1, v5

    float-to-int p1, v1

    .line 40
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 42
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    mul-float p1, p1, v6

    float-to-int p1, p1

    .line 43
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 44
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 45
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/q;->x:Z

    return v0
.end method

.method public a([Lcom/huawei/hms/ml/scan/HmsScan;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->o:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->o:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "torch"

    .line 2
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 3
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "getFlashStatusException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "getFlashStatusRuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->j:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 6
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/q;->l:Z

    :cond_1
    return-void
.end method

.method protected d()Lcom/huawei/hms/scankit/ProviderRemoteView;
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/ProviderRemoteView;

    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/ProviderRemoteView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public decodeWithBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->c:Lcom/huawei/hms/scankit/p/Kc;

    if-nez v1, :cond_1

    .line 5
    :try_start_0
    new-instance v1, Lcom/huawei/hms/scankit/p/Kc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "PhotoMode"

    :try_start_1
    invoke-direct {v1, v0, v2}, Lcom/huawei/hms/scankit/p/Kc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/hms/scankit/q;->c:Lcom/huawei/hms/scankit/p/Kc;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "Exception"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "RuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/q;->a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method

.method protected e()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "window"

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/scankit/q;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/q;->a(Landroid/graphics/Point;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "initSurfaceView: Exception"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "initSurfaceView: nullpoint"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected f()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->d()Lcom/huawei/hms/scankit/ProviderRemoteView;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    .line 2
    sget v1, Lcom/huawei/hms/scankit/R$id;->surfaceView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/TextureView;

    iput-object v3, p0, Lcom/huawei/hms/scankit/q;->g:Landroid/view/TextureView;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/e;

    iget-object v2, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/hms/scankit/q;->p:Landroid/graphics/Rect;

    iget v6, p0, Lcom/huawei/hms/scankit/q;->d:I

    iget-object v7, p0, Lcom/huawei/hms/scankit/q;->q:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    iget-boolean v8, p0, Lcom/huawei/hms/scankit/q;->r:Z

    const/4 v4, 0x0

    const-string v9, "CustomizedView"

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/huawei/hms/scankit/e;-><init>(Landroid/content/Context;Landroid/view/TextureView;Lcom/huawei/hms/scankit/ViewfinderView;Landroid/graphics/Rect;ILcom/huawei/hms/feature/dynamic/IObjectWrapper;ZLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    .line 4
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/q;->u:Z

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/e;->b(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->c()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->e()V

    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "off"

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "offFlashException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "offFlashRuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getLightStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->b()Z

    move-result v0

    return v0
.end method

.method public getView()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->a()Lcom/huawei/hms/scankit/p/Aa;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "torch"

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "openFlashException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "openFlashRuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected i()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->o:Landroid/app/AlertDialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    sget v1, Lcom/huawei/hms/scankit/R$layout;->scankit_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->o:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x3c

    .line 8
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const/16 v2, 0x50

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 13
    sget v1, Lcom/huawei/hms/scankit/R$id;->dialog_sure_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/scankit/p;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/p;-><init>(Lcom/huawei/hms/scankit/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->f()V

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {p1, p0}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/scankit/A;)Lcom/huawei/hms/scankit/e;

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    new-instance v0, Lcom/huawei/hms/scankit/n;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/n;-><init>(Lcom/huawei/hms/scankit/q;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->i:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/q;->t:Z

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/e;->a(Z)Lcom/huawei/hms/scankit/e;

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/e;->b()V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Lcom/huawei/hms/scankit/o;

    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/huawei/hms/scankit/o;-><init>(Lcom/huawei/hms/scankit/q;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/q;->s:Landroid/view/OrientationEventListener;

    .line 13
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->s:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->s:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->c()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->s:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->s:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "onDestroyException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "onDestroyRuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->d()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->j:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "onPauseException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v1, "onPauseRuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->e()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->j:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "onResumeException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    sget-object v1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "onResumeRuntimeException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.camera.flash"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/hms/scankit/q;->l:Z

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    if-nez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/q;->m:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/q;->n:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "onSensorChanged RemoteException"

    if-nez v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->w:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->v:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

    if-eqz p1, :cond_6

    .line 9
    :try_start_0
    invoke-interface {p1, v1}, Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;->onVisibleChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 10
    :catch_0
    sget-object p1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->w:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->b()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->w:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/huawei/hms/scankit/q;->v:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

    if-eqz p1, :cond_6

    .line 16
    :try_start_1
    invoke-interface {p1, v2}, Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;->onVisibleChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 17
    :catch_1
    sget-object p1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->f()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "onStartException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    sget-object v1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "onStartRuntimeException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->g()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "onStopException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    sget-object v1, Lcom/huawei/hms/scankit/q;->a:Ljava/lang/String;

    const-string v2, "onStopRuntimeException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public pauseContinuouslyScan()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/e;->h()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/q;->x:Z

    return-void
.end method

.method public resumeContinuouslyScan()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/q;->x:Z

    return-void
.end method

.method public setOnClickListener(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/huawei/hms/scankit/q;->k:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method public setOnErrorCallback(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V

    :cond_0
    return-void
.end method

.method public setOnLightVisbleCallBack(Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/q;->v:Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;

    return-void
.end method

.method public setOnResultCallback(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/q;->i:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->h:Lcom/huawei/hms/scankit/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V

    :cond_0
    return-void
.end method

.method public turnOffLight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->g()V

    return-void
.end method

.method public turnOnLight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/q;->h()V

    return-void
.end method
