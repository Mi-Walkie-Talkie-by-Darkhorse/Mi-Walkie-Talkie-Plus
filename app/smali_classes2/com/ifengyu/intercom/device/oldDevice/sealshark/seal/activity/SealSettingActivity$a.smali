.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    const v1, 0x7f110348

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$a;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    return-void
.end method