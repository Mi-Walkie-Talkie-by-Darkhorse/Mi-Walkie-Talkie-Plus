.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const v1, 0x7f1102a6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
