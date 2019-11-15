.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/CheckBox;

.field d:Landroid/widget/LinearLayout;

.field q:Landroid/widget/LinearLayout;

.field r:Landroid/widget/TextView;

.field private s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

.field private t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

.field private u:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;

.field private v:I

.field private w:Ljava/lang/Runnable;

.field private x:Landroid/graphics/Typeface;

.field private y:I

.field private z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    return v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/c;)Lcom/ifengyu/intercom/ui/widget/dialog/c;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasDeviceMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getDeviceMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v3

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getStateMode()I

    move-result v3

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->k()V

    iput v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    :cond_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:Landroid/widget/CheckBox;

    if-ne v3, v5, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-ne v3, v1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    goto :goto_1

    :cond_4
    if-ne v3, v5, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    if-ne v0, v5, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh1()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getCh2()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_1

    :cond_7
    const v0, 0x7f04010a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f10033a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10033b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f10000e

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const v3, 0x7f0900b1

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$12;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$12;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :pswitch_1
    const v3, 0x7f0900b3

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$15;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$15;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_8
    iput v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    :goto_1
    const-string v0, "device_setting_page"

    const-string v1, "editChannelBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    return p1
.end method

.method private b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V
    .locals 9

    const/4 v1, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400ff

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f100222

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1000c5

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f10013e

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f10013f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f100140

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v4

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090197

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090232

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10032e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$9;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const v0, 0x7f0400fe

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f10032d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100328

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100329

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f10032a

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f10032b

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10032c

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v6

    invoke-static {v6}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v3

    move-object v1, v5

    move-object v3, v4

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    return-object v0
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

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$18;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$18;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$19;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$19;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    return-object v0
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

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    return-object v0
.end method

.method private e()V
    .locals 7

    const v5, 0x7f0901ea

    const v6, 0x7f0901e9

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const v3, 0x7f09006c

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/y;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/y;

    const v0, 0x7f0901e8

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/y;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$20;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v0, v4, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/y$b;)Lcom/ifengyu/intercom/ui/widget/dialog/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->show()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private f()V
    .locals 6

    const v4, 0x7f020128

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    sget-object v3, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_0

    const v2, 0x7f0900a5

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$21;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$21;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private q()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->b(Z)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_3
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method private r()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const v1, 0x7f0901ee

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$4;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->c()V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private t()V
    .locals 5

    const v4, 0x7f020128

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->y:I

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->SHARK_MODE_NORMAL:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_MODE;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$5;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(ZZLjava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$6;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u()V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$7;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->e(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method private v()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$8;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a(Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->show()V

    return-void
.end method

.method private w()V
    .locals 8

    const/4 v1, 0x0

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900b9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:Landroid/widget/CheckBox;

    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    sget-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100176

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->show()V

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b:Landroid/widget/TextView;

    const v2, 0x7f090141

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->I()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0901ea

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0901e9

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 10

    const v9, 0x7f100222

    const v8, 0x7f1000c5

    const v7, 0x7f0400fd

    const v6, 0x7f0400fc

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v7, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100009

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$10;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v7, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v2

    :goto_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100008

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$11;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$11;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {p0, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f100224

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100225

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100226

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {p0, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f100224

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100225

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100226

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v4

    goto/16 :goto_1
.end method

.method public b(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 8

    const v7, 0x7f100222

    const v6, 0x7f1000c5

    const v5, 0x7f0400fd

    const/4 v3, 0x0

    invoke-static {p0, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100009

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$13;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$13;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100008

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$14;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$14;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const v0, 0x7f0400fc

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f100224

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100225

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100226

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v3

    goto :goto_0
.end method

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0901db

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b:Landroid/widget/TextView;

    const v2, 0x7f090141

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->p()Ljava/lang/String;

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
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->e()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->f()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->q()V

    const-string v0, "map_tab_page"

    const-string v1, "shareLocationBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->r()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s()V

    const-string v0, "device_setting_page"

    const-string v1, "sharkTimeSyncBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t()V

    const-string v0, "device_setting_page"

    const-string v1, "mcuUpdateBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000d0 -> :sswitch_1
        0x7f1000d2 -> :sswitch_2
        0x7f1000d6 -> :sswitch_5
        0x7f1000d8 -> :sswitch_6
        0x7f1000da -> :sswitch_8
        0x7f1000db -> :sswitch_9
        0x7f100174 -> :sswitch_4
        0x7f100176 -> :sswitch_3
        0x7f100178 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->w()V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$1;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SharkSettingActivity"

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "SharkSettingActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->u:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->A:Landroid/view/View;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->J()Z

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

    const-string v0, "SharkSettingActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->v:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/ab;->d()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->s:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->t:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SharkSettingActivity"

    const-string v1, "receiveChannelStateOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const-string v0, "SharkSettingActivity"

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->m:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$16;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
