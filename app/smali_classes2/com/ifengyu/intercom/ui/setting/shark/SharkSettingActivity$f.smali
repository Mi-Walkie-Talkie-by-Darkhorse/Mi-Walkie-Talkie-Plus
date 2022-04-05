.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;
.super Lcom/ifengyu/intercom/g/d/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->G()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V
    .locals 4

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateInfoModel:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SharkSettingActivity"

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersionCode:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->K()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mcu_update_device_type"

    const-string v3, "shark"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mcu_have_update"

    if-lez v0, :cond_0

    if-ge v0, p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string p2, "mcu_update_info"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "mcu_update_action_from_setting"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$f;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
