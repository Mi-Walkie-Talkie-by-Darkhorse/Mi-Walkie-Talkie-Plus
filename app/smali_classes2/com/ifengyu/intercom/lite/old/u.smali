.class public final synthetic Lcom/ifengyu/intercom/lite/old/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/q;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/u;->a:Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/u;->a:Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;

    check-cast p1, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/old/LiteVoiceSettingActivity;->a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V

    return-void
.end method
