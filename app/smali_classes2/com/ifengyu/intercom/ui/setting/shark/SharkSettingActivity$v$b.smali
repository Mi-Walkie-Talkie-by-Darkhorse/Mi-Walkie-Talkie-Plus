.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/e;)Lcom/ifengyu/intercom/ui/widget/dialog/e;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v$b;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$v;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
