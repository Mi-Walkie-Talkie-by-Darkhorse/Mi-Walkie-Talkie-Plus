.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_6

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->e(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Z)Z

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->f(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->k()V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasIsAllPublic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_ON:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->n()[I

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->o()[I

    move-result-object v2

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->h(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    if-eqz v0, :cond_4

    const v0, 0x7f110157

    goto :goto_2

    :cond_4
    const v0, 0x7f11010d

    :goto_2
    invoke-virtual {v5, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 17
    :goto_3
    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 18
    new-instance v4, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    .line 19
    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    .line 20
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    .line 21
    aget v5, v2, v0

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 22
    aget v5, v2, v0

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    const v5, 0x7f110076

    new-array v6, v3, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    .line 25
    invoke-virtual {v4, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 26
    invoke-virtual {v4, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(Z)V

    .line 27
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lb/d/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_4

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$h;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    const v1, 0x7f1102c8

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->b(I)V

    :cond_7
    :goto_4
    return-void
.end method