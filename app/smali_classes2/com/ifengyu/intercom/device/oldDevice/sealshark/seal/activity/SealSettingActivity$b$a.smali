.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b$a;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b;->a(Lcom/ifengyu/library/http/exception/NewApiException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    return-void
.end method
