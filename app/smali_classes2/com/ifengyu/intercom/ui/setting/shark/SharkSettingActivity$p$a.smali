.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p$a;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$p;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m:Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;->a()V

    :cond_0
    return-void
.end method
