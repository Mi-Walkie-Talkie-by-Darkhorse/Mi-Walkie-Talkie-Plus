.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$u;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->X()V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$u;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$u;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->G()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$u;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
