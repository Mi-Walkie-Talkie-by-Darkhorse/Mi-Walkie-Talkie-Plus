.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "DolphinSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/network/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

.field private C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private E:I

.field private F:Landroid/graphics/Typeface;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field q:Landroid/view/View;

.field r:Landroid/view/View;

.field s:Landroid/widget/LinearLayout;

.field t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/CheckBox;

.field private x:Landroid/widget/CheckBox;

.field private y:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/c;)Lcom/ifengyu/intercom/ui/widget/dialog/c;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    const v0, 0x7f040107

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f10032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v1, p2}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_0

    const v0, 0x7f040108

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f10032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f100328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f100339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f10032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const v0, 0x7f040107

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/view/View;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 7

    const v6, 0x7f1000c5

    const v5, 0x7f04008d

    const v4, 0x7f04008c

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_0

    invoke-static {p0, v5, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v1, 0x7f100224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v1, 0x7f100225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v1, 0x7f100226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_1

    invoke-static {p0, v5, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {p0, v4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {p0, v4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    const-string v3, "GB2312"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/m;->a()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->k()V

    iput v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_0

    iput v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d(I)V

    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090165

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0901fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    :goto_1
    const-string v0, "device_setting_page"

    const-string v1, "editChannelBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    return v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/network/b;)V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(ZZLjava/lang/String;I)V

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$11;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$11;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$12;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/f;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    goto :goto_0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/c;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/f;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 8

    const/4 v1, 0x0

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900b9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a:Landroid/view/View;

    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->b:Landroid/view/View;

    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c:Landroid/view/View;

    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d:Landroid/view/View;

    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->q:Landroid/view/View;

    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->r:Landroid/view/View;

    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f1000d5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    sget-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->show()V

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->v:Landroid/widget/TextView;

    const v2, 0x7f090141

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$4;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 9

    const v8, 0x7f1000c5

    const v7, 0x7f04008c

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-static {p0, v7, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v3, 0x7f100222

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    const v3, 0x7f100009

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, v7, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v3, 0x7f100221

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v3, 0x7f100222

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    const v3, 0x7f100008

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_5

    iput v6, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f090059

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v1, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v1, :cond_8

    iput v6, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    const v1, 0x7f090051

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    new-instance v3, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v3, v1}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iput v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    new-instance v1, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_a

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_c

    :cond_a
    const v0, 0x7f04010a

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f10033a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10033b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v3, :cond_b

    const v2, 0x7f0900b3

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    const v2, 0x7f0900b1

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    invoke-direct {p0, p1, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    goto/16 :goto_3
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 5

    const v4, 0x10006

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->m()I

    move-result v1

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "update_info_message"

    if-lt v1, v4, :cond_3

    const-string v0, "update_mcu_ble"

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MCU_SERVER_VERSION_CODE"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "update_mcu"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "errno"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "errno"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-lt v1, v4, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mcu_language_type_english"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "update_info_message"

    const-string v2, "update_diff_language"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "MCU_SERVER_VERSION_CODE"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "update_info_message"

    const-string v2, "update_all_is_newest"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mcu_language_type_chinese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "update_info_message"

    const-string v2, "update_diff_language"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "MCU_SERVER_VERSION_CODE"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    const-string v0, "update_info_message"

    const-string v2, "update_all_is_newest"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    const-string v0, "update_info_message"

    const-string v2, "update_all_is_newest"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :sswitch_1
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v2, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v0, v1, :cond_a

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_c

    :cond_a
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-nez v0, :cond_c

    const v0, 0x7f04010a

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f10033a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10033b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v3, :cond_b

    const v2, 0x7f0900b3

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    const v2, 0x7f0900b1

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v1, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/m;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v1, v2, :cond_12

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v1, v2, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_14
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0901db

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->v:Landroid/widget/TextView;

    const v2, 0x7f090141

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->p()Ljava/lang/String;

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
    .locals 6

    const v5, 0x7f090187

    const v4, 0x7f020128

    const v3, 0x7f0900a1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(ZZLjava/lang/String;I)V

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$5;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$5;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$6;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->d()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$7;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->e()V

    :goto_1
    const-string v0, "map_tab_page"

    const-string v1, "shareLocationBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_9
    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c()V

    const-string v0, "device_setting_page"

    const-string v1, "mcuUpdateBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-direct {v0, p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$8;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->a(Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;)Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->show()V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->finish()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100008 -> :sswitch_9
        0x7f100009 -> :sswitch_8
        0x7f1000c3 -> :sswitch_7
        0x7f1000d0 -> :sswitch_0
        0x7f1000d2 -> :sswitch_1
        0x7f1000d4 -> :sswitch_2
        0x7f1000d6 -> :sswitch_3
        0x7f1000d8 -> :sswitch_4
        0x7f1000da -> :sswitch_5
        0x7f1000db -> :sswitch_6
        0x7f10032e -> :sswitch_a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->f()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->receiveStateUpdateResponse(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->m:Z

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$9;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$10;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    goto :goto_0
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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->b(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "DolphinSettingActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/k;->a(Lcom/ifengyu/intercom/node/i$a;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/m;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Lcom/ifengyu/intercom/ui/widget/dialog/ab;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ab;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveStateUpdateResponse(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :cond_0
    return-void
.end method
