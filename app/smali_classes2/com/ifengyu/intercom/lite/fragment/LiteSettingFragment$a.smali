.class Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/ifengyu/intercom/lite/models/DeviceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/g/s;->b()Lcom/ifengyu/intercom/lite/g/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionHw()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/g/s;->a(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$a;->a(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    return-void
.end method
