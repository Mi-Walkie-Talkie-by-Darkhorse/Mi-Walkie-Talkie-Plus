.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->f()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->f(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$5;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    return-void
.end method
