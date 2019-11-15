.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$2;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/c;)Lcom/ifengyu/intercom/ui/widget/dialog/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->show()V

    return-void
.end method
