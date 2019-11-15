.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$1;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->b(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/f;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    :cond_0
    return-void
.end method
