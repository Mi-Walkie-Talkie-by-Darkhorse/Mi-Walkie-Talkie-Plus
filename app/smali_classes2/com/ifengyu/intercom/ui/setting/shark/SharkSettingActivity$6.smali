.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v2, 0x7f09019f

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
