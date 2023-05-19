.class public Lcom/huawei/hms/hmsscankit/ScanKitActivity;
.super Landroid/app/Activity;
.source "ScanKitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanKitActivity"


# instance fields
.field private lastRotation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->lastRotation:I

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/hms/hmsscankit/ScanKitActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->lastRotation:I

    return p0
.end method

.method static synthetic access$002(Lcom/huawei/hms/hmsscankit/ScanKitActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->lastRotation:I

    return p1
.end method

.method private startOrientationChangeListener()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;-><init>(Lcom/huawei/hms/hmsscankit/ScanKitActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/hmsscankit/RemoteView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "ScanKitActivity"

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    sget v1, Lcom/huawei/hms/scankit/R$layout;->scankit_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ScanFormatValue"

    :try_start_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "getIntExtra can not get"

    .line 6
    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    new-instance v3, Lcom/huawei/hms/hmsscankit/RemoteView;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/huawei/hms/hmsscankit/RemoteView;-><init>(Landroid/app/Activity;ZILandroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 8
    new-instance v2, Lcom/huawei/hms/hmsscankit/ScanKitActivity$1;

    invoke-direct {v2, p0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity$1;-><init>(Lcom/huawei/hms/hmsscankit/ScanKitActivity;)V

    invoke-virtual {v3, v2}, Lcom/huawei/hms/hmsscankit/RemoteView;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/OnResultCallback;)V

    .line 9
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v2, p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->onCreate(Landroid/os/Bundle;)V

    .line 10
    sget p1, Lcom/huawei/hms/scankit/R$id;->ll_top:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    :cond_1
    const/16 v2, 0x13

    if-lt p1, v2, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    const/high16 v3, 0xc000000

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    if-eqz v1, :cond_2

    const/high16 v1, 0x8000000

    .line 16
    invoke-virtual {v2, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    const/16 v1, 0x1c

    if-lt p1, v1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->startOrientationChangeListener()V

    :cond_3
    const-string p1, "ScankitActivity on create"

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onDestroy()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onDestroy"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onPause()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onPause"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onResume()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onResume"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStart()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onStart"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStop()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onStop"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
