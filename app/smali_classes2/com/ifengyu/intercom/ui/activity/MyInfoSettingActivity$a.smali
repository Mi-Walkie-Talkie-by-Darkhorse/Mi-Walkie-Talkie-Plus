.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->r()V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "setting_my_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z

    move-result v0

    const-string v1, "setting_had_modify_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Z

    move-result v0

    const-string v1, "setting_had_modify_portrait"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
