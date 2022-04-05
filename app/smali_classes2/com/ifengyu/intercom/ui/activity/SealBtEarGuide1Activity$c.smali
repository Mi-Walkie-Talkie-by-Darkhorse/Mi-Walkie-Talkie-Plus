.class Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;
.super Lcom/ifengyu/intercom/g/d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V
    .locals 4

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->a(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->b(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;->getVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/SealSharkMcuUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mcu_update_device_type"

    const-string v3, "seal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez v0, :cond_0

    if-ge v0, p2, :cond_0

    const/4 p2, 0x1

    const-string v0, "mcu_have_update"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "mcu_update_info"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "mcu_update_action_from_setting"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->a(Lcom/ifengyu/intercom/bean/McuUpdateInfoModel;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->a(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;->b:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
