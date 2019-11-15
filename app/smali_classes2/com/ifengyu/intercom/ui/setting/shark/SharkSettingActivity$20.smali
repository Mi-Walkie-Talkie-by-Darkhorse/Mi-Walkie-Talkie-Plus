.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    if-gt p2, v4, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v3, 0x7f090187

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(I)V

    :cond_1
    return-void
.end method
