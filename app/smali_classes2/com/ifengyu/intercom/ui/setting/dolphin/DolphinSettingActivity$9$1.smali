.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9$1;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->n:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;->a()V

    :cond_0
    return-void
.end method
