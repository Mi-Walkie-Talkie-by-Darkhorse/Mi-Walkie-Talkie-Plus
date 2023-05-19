.class public final synthetic Lcom/ifengyu/intercom/device/lite/fragment/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/m0;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/m0;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->C3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
