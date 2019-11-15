.class public Lcom/amap/api/maps/offlinemap/OfflineMapActivity;
.super Lcom/amap/api/offlineservice/AMapPermissionActivity;
.source "OfflineMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/amap/api/offlineservice/a;

.field private c:Lcom/amap/api/mapcore/util/fc;

.field private d:[Lcom/amap/api/mapcore/util/fc;

.field private e:I

.field private f:Lcom/amap/api/mapcore/util/fd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/offlineservice/AMapPermissionActivity;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/amap/api/mapcore/util/fc;

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/fc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/fc;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b(Lcom/amap/api/mapcore/util/fc;)Lcom/amap/api/offlineservice/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c:Lcom/amap/api/mapcore/util/fc;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/offlineservice/a;->a(Lcom/amap/api/maps/offlinemap/OfflineMapActivity;)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c:Lcom/amap/api/mapcore/util/fc;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/fc;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/amap/api/offlineservice/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    if-le v2, v1, :cond_0

    sget v2, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    iget v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, 0x20

    rem-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/fc;

    iget v3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    aget-object v2, v2, v3

    iput-object p1, v2, Lcom/amap/api/mapcore/util/fc;->b:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Lcom/amap/api/mapcore/util/fc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/mapcore/util/fc;)Lcom/amap/api/offlineservice/a;
    .locals 1

    :try_start_0
    iget v0, p1, Lcom/amap/api/mapcore/util/fc;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/fd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/fd;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/fd;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/fd;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/fd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeScr()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeScr(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public newScr(Lcom/amap/api/mapcore/util/fc;)V
    .locals 2

    :try_start_0
    sget v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Lcom/amap/api/mapcore/util/fc;)V

    iget v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/fc;

    iget v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/offlineservice/a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;)Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/fc;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->newScr(Lcom/amap/api/mapcore/util/fc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->c:Lcom/amap/api/mapcore/util/fc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->d:[Lcom/amap/api/mapcore/util/fc;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/fd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/fd;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fd;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->f:Lcom/amap/api/mapcore/util/fd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v2}, Lcom/amap/api/offlineservice/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    sget v2, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->finish()V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->e:I

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onPause()V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onResume()V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onStart()V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/amap/api/offlineservice/AMapPermissionActivity;->onStop()V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showScr()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->b:Lcom/amap/api/offlineservice/a;

    invoke-virtual {v0}, Lcom/amap/api/offlineservice/a;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
