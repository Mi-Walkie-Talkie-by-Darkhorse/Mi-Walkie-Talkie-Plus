.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e0:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->d()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->s(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->e()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->d:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$u;->a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method
