.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$c;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    return-void
.end method