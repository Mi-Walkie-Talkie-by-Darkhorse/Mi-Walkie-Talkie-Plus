.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->receiveSealChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x41880000    # 17.0f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChNo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChRxFreq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "C%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$20;->b:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
