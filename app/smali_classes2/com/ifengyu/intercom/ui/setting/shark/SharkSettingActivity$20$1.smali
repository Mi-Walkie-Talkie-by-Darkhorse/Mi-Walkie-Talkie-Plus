.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20$1;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20$1;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20$1;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20$1;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->k()V

    return-void
.end method
