.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;
.super Ljava/lang/Object;
.source "SealSharkMcuUpdateActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/CircleProgress;->setProgress(ILcom/ifengyu/intercom/ui/widget/view/CircleProgress$STATE;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->N(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    return-void
.end method

.method public onError(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->O(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

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
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->N()Ljava/lang/String;

    move-result-object p1

    const-string v0, "email"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)I

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
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    const/4 v0, 0x5

    const-string v2, "toVersionName"

    const-string v3, "toVersionCode"

    const-string v4, "fromVersionName"

    const-string v5, "fromVersionCode"

    if-ne p1, v0, :cond_3

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/d;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "Seal_Firmware_Upgrade_Failure"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/d;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "Shark_Firmware_Upgrade_Failure"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onSuccess()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgradeProgress"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "mobileManufacturer"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "mobileBrand"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "mobileModel"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "mobileRelease"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "toVersionName"

    const-string v5, "toVersionCode"

    const-string v6, "fromVersionName"

    const-string v7, "fromVersionCode"

    if-ne v2, v1, :cond_0

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/d/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "Seal_Firmware_Upgrade_Success"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    invoke-static {v3}, Lcom/ifengyu/intercom/p/d0;->J0(Z)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->O0(I)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/d/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    const-string v2, "Shark_Firmware_Upgrade_Success"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    invoke-static {v3}, Lcom/ifengyu/intercom/p/d0;->T0(Z)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/SealSharkMcuUpdateActivity;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->W0(I)V

    :cond_1
    :goto_0
    return-void
.end method
