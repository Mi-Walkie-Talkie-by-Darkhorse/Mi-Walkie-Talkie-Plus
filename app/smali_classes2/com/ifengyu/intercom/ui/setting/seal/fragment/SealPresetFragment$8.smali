.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->e(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->f()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasIsAllPublic()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    if-ne v0, v1, :cond_2

    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->h()[I

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->h(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    if-eqz v1, :cond_4

    const v1, 0x7f09010b

    :goto_2
    invoke-virtual {v5, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_5

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    const v5, 0x7f090056

    new-array v6, v3, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    invoke-virtual {v4, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    invoke-virtual {v4, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(Z)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->i()[I

    move-result-object v0

    goto :goto_1

    :cond_4
    const v1, 0x7f0900df

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/zhy/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/a/a/a;->notifyDataSetChanged()V

    :cond_6
    :goto_4
    return-void

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$8;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    const v1, 0x7f0901b9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->b(I)V

    goto :goto_4
.end method
