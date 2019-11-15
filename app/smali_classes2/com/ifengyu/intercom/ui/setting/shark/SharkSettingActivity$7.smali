.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;
.super Lcom/ifengyu/intercom/a/b/h;
.source "SharkSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->k()V

    if-eqz p1, :cond_0

    const-string v0, "SharkSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfoModel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SharkSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->G()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const-class v4, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "mcu_update_device_type"

    const-string v4, "shark"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez v1, :cond_1

    if-ge v1, v0, :cond_1

    const-string v0, "mcu_have_update"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v0, "mcu_update_info"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "mcu_update_action_from_setting"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "mcu_have_update"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 4

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
