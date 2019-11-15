.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->receiveSharkChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/4 v3, 0x1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->SHARK_ST_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCurrentChId()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;I)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)I

    move-result v0

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)I

    move-result v0

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->g(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$2;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
