.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/n;->a:Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/n;->a:Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;

    check-cast p1, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->t3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method