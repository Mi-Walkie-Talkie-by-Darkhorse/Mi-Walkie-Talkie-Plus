.class public Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/Runnable;

.field private C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private D:Landroid/graphics/Typeface;

.field private E:I

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/CheckBox;

.field d:Landroid/widget/LinearLayout;

.field q:Landroid/widget/LinearLayout;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

.field private y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

.field private z:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/c;)Lcom/ifengyu/intercom/ui/widget/dialog/c;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 9

    const v8, 0x7f090232

    const v7, 0x7f090197

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->SEAL_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_MODE;->getNumber()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getStateMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

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

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v8, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "C%02d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

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

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v8, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f04010a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10033a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f10033b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400ff

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100222

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f1000c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f10013e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->F:Landroid/widget/LinearLayout;

    const v0, 0x7f10013f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f100140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v1

    :goto_0
    const v1, 0x7f10032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const v0, 0x7f0400fe

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10032d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f100328

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f100329

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f10032a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->G:Landroid/widget/LinearLayout;

    const v0, 0x7f10032b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f10032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->E:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    const-string v0, "device_setting_page"

    const-string v1, "editChannelBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:I

    return v0
.end method

.method private c()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$7;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$8;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$8;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetSealSharkBleNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const v2, 0x7f0900f6

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0900f4

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f09006c

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$9;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    return-object v0
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$10;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Z)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_3
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    return-object v0
.end method

.method private q()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(ZZLjava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$11;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$11;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->s()V

    goto :goto_0
.end method

.method private s()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->d(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method private t()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a(Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->show()V

    return-void
.end method

.method private u()V
    .locals 8

    const v4, 0x7f100152

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0900b9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f100153

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    sget-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->J:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->show()V

    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->v()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f090141

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const-string v1, "Low"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const-string v1, "Medium"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const-string v1, "High"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const v6, 0xea60

    const/4 v3, 0x1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_0

    const-string v0, "setting_walkie_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0901db

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090248

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    const-string v0, "setting_auto_send_location_space_time"

    const/4 v1, 0x3

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b:Landroid/widget/TextView;

    const v2, 0x7f090141

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->p()Ljava/lang/String;

    move-result-object v1

    mul-int v2, v0, v6

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/ifengyu/intercom/b/w;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v1

    mul-int/2addr v0, v6

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(J)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SealBtEarDisConnActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bt_ear_had_conn_to"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e()V

    const-string v0, "device_setting_page"

    const-string v1, "sealFreeTalkBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->f()V

    const-string v0, "map_tab_page"

    const-string v1, "shareLocationBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->q()V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->r()V

    const-string v0, "device_setting_page"

    const-string v1, "mcuUpdateBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_9
    const-class v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Ljava/lang/Class;)V

    const-string v0, "device_setting_page"

    const-string v1, "sealBleConnHelperBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_a
    const-class v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->t()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000d0 -> :sswitch_3
        0x7f1000d2 -> :sswitch_4
        0x7f1000d6 -> :sswitch_6
        0x7f1000d8 -> :sswitch_7
        0x7f1000da -> :sswitch_8
        0x7f1000db -> :sswitch_b
        0x7f100152 -> :sswitch_1
        0x7f100154 -> :sswitch_5
        0x7f100159 -> :sswitch_9
        0x7f10015a -> :sswitch_a
        0x7f10032e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->u()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SealSettingActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "SealSettingActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->z:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->J:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "SealSettingActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->A:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->c()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->x:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->y:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveBtEarConnectStateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SealSettingActivity"

    const-string v1, "receiveBtEarConnectStateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$4;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SealSettingActivity"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SealSettingActivity"

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->m:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$5;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
