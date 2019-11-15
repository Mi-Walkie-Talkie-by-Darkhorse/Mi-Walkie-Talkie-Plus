.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;I)I

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    sget v0, Lcom/ifengyu/intercom/b/w;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_1
.end method
