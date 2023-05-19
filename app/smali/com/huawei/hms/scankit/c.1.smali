.class Lcom/huawei/hms/scankit/c;
.super Ljava/lang/Object;
.source "CaptureHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/e;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/scankit/e;Z)Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string p2, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-static {p1}, Lcom/huawei/hms/scankit/e;->b(Lcom/huawei/hms/scankit/e;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/e;->b(Lcom/huawei/hms/scankit/e;Z)Z

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-static {p1}, Lcom/huawei/hms/scankit/e;->c(Lcom/huawei/hms/scankit/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1, p3, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-static {p1}, Lcom/huawei/hms/scankit/e;->d(Lcom/huawei/hms/scankit/e;)Landroid/view/TextureView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/scankit/e;Landroid/view/TextureView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-static {p1}, Lcom/huawei/hms/scankit/e;->c(Lcom/huawei/hms/scankit/e;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/e;->a(Lcom/huawei/hms/scankit/e;Z)Z

    .line 10
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    invoke-static {p1}, Lcom/huawei/hms/scankit/e;->c(Lcom/huawei/hms/scankit/e;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/c;->a:Lcom/huawei/hms/scankit/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/e;->b(Lcom/huawei/hms/scankit/e;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
