.class Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;
.super Ljava/lang/Object;
.source "LiteSettingActivity.java"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->z()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->a(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity$b;->a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V

    return-void
.end method
