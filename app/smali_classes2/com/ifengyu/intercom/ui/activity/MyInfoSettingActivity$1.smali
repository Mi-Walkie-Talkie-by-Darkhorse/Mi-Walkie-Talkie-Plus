.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "setting_my_name"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "setting_had_modify_name"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "setting_had_modify_portrait"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->finish()V

    return-void
.end method
