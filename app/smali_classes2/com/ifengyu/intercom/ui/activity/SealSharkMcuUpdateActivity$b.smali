.class Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;
.super Ljava/lang/Object;
.source "SealSharkMcuUpdateActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->h(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgradeProgress"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "mobileManufacturer"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "mobileBrand"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "mobileModel"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "mobileRelease"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "toVersionName"

    const-string v5, "toVersionCode"

    const-string v6, "fromVersionName"

    const-string v7, "fromVersionCode"

    if-ne v2, v1, :cond_0

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "Seal_Firmware_Upgrade_Success"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    invoke-static {v3}, Lcom/ifengyu/intercom/i/d0;->n(Z)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->j(I)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 25
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v1}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "Shark_Firmware_Upgrade_Success"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    invoke-static {v3}, Lcom/ifengyu/intercom/i/d0;->q(Z)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->n(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->d(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->e(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    return-void
.end method

.method public b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->g(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->a(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;I)I

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->b(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)V

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-ne p1, v0, :cond_2

    const-string p1, "LOW POWER"

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "failureReason"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object p1

    const-string v0, "email"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->f(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgradeProgress"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "mobileManufacturer"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "mobileBrand"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "mobileModel"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "mobileRelease"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 v0, 0x5

    const-string v2, "toVersionName"

    const-string v3, "toVersionCode"

    const-string v4, "fromVersionName"

    const-string v5, "fromVersionCode"

    if-ne p1, v0, :cond_3

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "Seal_Firmware_Upgrade_Failure"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;->c(Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "Shark_Firmware_Upgrade_Failure"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-void
.end method
