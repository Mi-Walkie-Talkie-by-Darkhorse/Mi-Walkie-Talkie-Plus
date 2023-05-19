.class Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;
.super Landroid/view/OrientationEventListener;
.source "ScanKitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/hmsscankit/ScanKitActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hms/hmsscankit/ScanKitActivity;


# direct methods
.method constructor <init>(Lcom/huawei/hms/hmsscankit/ScanKitActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;->this$0:Lcom/huawei/hms/hmsscankit/ScanKitActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const-string p1, "ScanKitActivity"

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;->this$0:Lcom/huawei/hms/hmsscankit/ScanKitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;->this$0:Lcom/huawei/hms/hmsscankit/ScanKitActivity;

    invoke-static {v1}, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->access$000(Lcom/huawei/hms/hmsscankit/ScanKitActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;->this$0:Lcom/huawei/hms/hmsscankit/ScanKitActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "onOrientationChanged: currentRotation"

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;->this$0:Lcom/huawei/hms/hmsscankit/ScanKitActivity;

    invoke-static {v1, v0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->access$002(Lcom/huawei/hms/hmsscankit/ScanKitActivity;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "onOrientationChanged: RuntimeException"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
