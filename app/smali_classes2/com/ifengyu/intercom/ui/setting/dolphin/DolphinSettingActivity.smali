.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "DolphinSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/network/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;
    }
.end annotation


# instance fields
.field A:Landroid/view/View;

.field B:Landroid/view/View;

.field C:Landroid/widget/LinearLayout;

.field D:Landroid/widget/LinearLayout;

.field private E:I

.field private F:Ljava/lang/Runnable;

.field private G:Lcom/ifengyu/intercom/ui/widget/dialog/z;

.field private H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field private J:I

.field private K:Landroid/graphics/Typeface;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/TextView;

.field private Y:Lcom/ifengyu/intercom/ui/widget/dialog/e;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/CheckBox;

.field private t:Landroid/widget/CheckBox;

.field private u:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;

.field v:Landroid/view/View;

.field w:Landroid/view/View;

.field x:Landroid/view/View;

.field y:Landroid/view/View;

.field z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/ui/widget/dialog/e;)Lcom/ifengyu/intercom/ui/widget/dialog/e;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Y:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 3

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    .line 120
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->X:Landroid/widget/TextView;

    const v1, 0x7f0c0139

    .line 123
    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v1, 0x7f0902d6

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v1, 0x7f0903b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 129
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, -0x1

    .line 135
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    .line 136
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    new-instance v0, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v0, p2}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    .line 138
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    .line 139
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    .line 140
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->X:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_0

    const p1, 0x7f0c013a

    .line 142
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v0, 0x7f09033b

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v0, 0x7f09033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    .line 145
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v0, 0x7f0902d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->X:Landroid/widget/TextView;

    .line 146
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->X:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0139

    .line 148
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v0, 0x7f0902d6

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    .line 150
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v0, 0x7f0902d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    const v0, 0x7f0903b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 154
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->U:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 10

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    .line 156
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 157
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    .line 158
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    .line 159
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    .line 160
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    .line 161
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    .line 162
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    const v2, 0x7f090341

    const v3, 0x7f09033f

    const v4, 0x7f09033e

    const v5, 0x7f0c0092

    const v6, 0x7f0902d7

    const v7, 0x7f0902d6

    const v8, 0x7f0c0091

    if-ne p1, v1, :cond_0

    .line 164
    invoke-static {p0, v5, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    .line 165
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 166
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    .line 167
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    .line 168
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p0, v8, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    .line 171
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 172
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    .line 173
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    const v1, 0x7f090145

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 175
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object p2, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    const/4 v1, 0x0

    const v9, 0x7f0903b9

    if-ne p1, p2, :cond_1

    .line 177
    invoke-static {p0, v5, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    .line 178
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    .line 180
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    .line 181
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Landroid/widget/TextView;

    .line 182
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 183
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 184
    :cond_1
    invoke-static {p0, v8, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    .line 185
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    .line 187
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    .line 188
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    const p2, 0x7f090142

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 190
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V
    .locals 3

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const p1, 0x7f110308

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const p1, 0x7f110326

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    const p1, 0x7f1102b0

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 47
    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 48
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f11025b

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p2, 0x7f110312

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    return-void

    .line 49
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinCHSettingActivity;->a(Landroid/content/Context;Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto :goto_0

    :cond_5
    const p1, 0x7f1100c9

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    return-object p0
.end method

.method private b(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_7

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    const/4 v1, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    .line 6
    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 8
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/q;->a()V

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_5

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v2, :cond_6

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const-string v2, "GB2312"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 19
    :cond_7
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, p1, :cond_8

    .line 20
    iput v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    const p1, 0x7f080189

    .line 21
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    const p1, 0x7f110260

    .line 22
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 23
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$l;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$l;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)Lcom/ifengyu/intercom/ui/widget/dialog/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Y:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    return-object p0
.end method

.method private w()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/network/b;)V

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f110248

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1100c9

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const v2, 0x7f110089

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013e

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    new-instance v2, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v2, v3, p0, v4, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result v1

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;I)V

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$k;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private x()V
    .locals 8

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041d

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1100e4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090351

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->v:Landroid/view/View;

    const v0, 0x7f09011c

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/view/View;

    const v0, 0x7f090146

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/view/View;

    const v0, 0x7f090315

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->y:Landroid/view/View;

    const v0, 0x7f090074

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:Landroid/view/View;

    const v0, 0x7f09011f

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Landroid/view/View;

    const v0, 0x7f09010f

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Landroid/view/View;

    const v0, 0x7f09022d

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Landroid/widget/LinearLayout;

    const v0, 0x7f09011d

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f0900fd

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f090075

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090147

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    const v0, 0x7f090316

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    .line 17
    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    const v0, 0x7f090429

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->y:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->A:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->B:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090343

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Y:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Y:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->D:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->r:Landroid/widget/TextView;

    const v2, 0x7f110213

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private y()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/e;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V

    return-void
.end method

.method private z()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/e;->d()Lcom/ifengyu/intercom/node/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/e;->b(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 8

    if-eqz p1, :cond_d

    .line 51
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 54
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 56
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    .line 57
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    .line 60
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    const v3, 0x7f0c0091

    .line 62
    invoke-static {p0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    const v5, 0x7f0902d6

    .line 63
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 64
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    const v6, 0x7f0902d7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    .line 65
    iget-object v7, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    const v7, 0x7f090145

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 67
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {p0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    const v3, 0x7f0903b9

    .line 69
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    .line 72
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->K:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    const v3, 0x7f090142

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 74
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->M:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->N:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-ne v1, v4, :cond_3

    .line 84
    iput v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    .line 85
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    const v1, 0x7f110079

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 86
    :cond_3
    iput v6, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    .line 87
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    new-instance v4, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v4, v0}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_2
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 91
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v0, :cond_7

    .line 94
    iput v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    .line 95
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    const v0, 0x7f110071

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 96
    :cond_7
    iput v6, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->J:I

    .line 97
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    new-instance v0, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 98
    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 99
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 101
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 102
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v2, v3, :cond_a

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v3, :cond_9

    goto :goto_5

    .line 103
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    goto :goto_6

    :cond_a
    :goto_5
    const p1, 0x7f0c013d

    .line 104
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f09040d

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09008a

    .line 106
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v0, :cond_b

    const p1, 0x7f1100de

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1100df

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    const p1, 0x7f1100dc

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1100dd

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 114
    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 117
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 6

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    .line 10
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->k()I

    move-result v0

    .line 11
    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const v2, 0x10006

    const-string v3, "MCU_SERVER_VERSION_CODE"

    const-string v4, "versionCode"

    const-string v5, "update_info_message"

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_3

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-lt v0, v2, :cond_1

    const-string p2, "update_mcu_ble"

    goto :goto_0

    :cond_1
    const-string p2, "update_mcu"

    .line 13
    :goto_0
    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 18
    :cond_3
    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p1, v1, :cond_b

    if-eqz p2, :cond_b

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "errno"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    goto/16 :goto_2

    :cond_4
    const p1, 0x7f110283

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    :cond_5
    if-lt v0, v2, :cond_b

    .line 23
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p2

    const-string v0, "update_diff_language"

    const-string v1, "update_all_is_newest"

    if-eqz p2, :cond_7

    .line 25
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object p2

    const-string v2, "mcu_language_type_english"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 26
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 28
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 30
    :cond_6
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 31
    :cond_7
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 32
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object p2

    const-string v2, "mcu_language_type_chinese"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 33
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 35
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 37
    :cond_8
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 38
    :cond_9
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public b(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 5

    if-eqz p1, :cond_15

    .line 24
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 27
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 29
    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    .line 30
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->O:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v3, v4, :cond_1

    .line 34
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->R:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v0, :cond_5

    .line 43
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 45
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 46
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 47
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 48
    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 49
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 51
    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 52
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v3, v4, :cond_9

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v3, v4, :cond_b

    :cond_9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v3

    if-nez v3, :cond_b

    const p1, 0x7f0c013d

    .line 53
    invoke-static {p0, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f09040d

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09008a

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v0, :cond_a

    const p1, 0x7f1100de

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1100df

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    const p1, 0x7f1100dc

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1100dd

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 63
    :cond_b
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    .line 64
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 66
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v2, v3, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v2, :cond_c

    goto :goto_3

    .line 67
    :cond_c
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_d

    .line 68
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 70
    :cond_d
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 71
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 72
    :cond_f
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 73
    :cond_10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 74
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 76
    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 77
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    .line 78
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->V:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/q;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 80
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v2, v3, :cond_13

    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v2, :cond_11

    goto :goto_4

    .line 81
    :cond_11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_12

    .line 82
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 84
    :cond_12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 85
    :cond_13
    :goto_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 86
    :cond_14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    const-string p1, "setting_walkie_name"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f1102ef

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p2, 0x7f110375

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    const/4 p1, 0x3

    const-string p2, "setting_auto_send_location_space_time"

    .line 6
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->r:Landroid/widget/TextView;

    const p3, 0x7f110213

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object p2

    const p3, 0xea60

    mul-int p1, p1, p3

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;J)V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x1388

    const v2, 0x7f110285

    const v3, 0x7f08013e

    const v4, 0x7f1100c9

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1, v5}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz p1, :cond_b

    .line 6
    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto/16 :goto_0

    .line 7
    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->U()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1100d9

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v6, p1, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const p1, 0x7f080191

    .line 10
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 11
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$d;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 12
    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$e;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Lcom/ifengyu/intercom/ui/baseui/BaseActivity$e;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 14
    :sswitch_3
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/z;

    invoke-direct {p1, p0, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/z;-><init>(Landroid/app/Activity;Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$h;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/z;->a(Lcom/ifengyu/intercom/ui/widget/dialog/z$a;)Lcom/ifengyu/intercom/ui/widget/dialog/z;

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 17
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v5, p1, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 20
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$g;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$g;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    .line 22
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->z()V

    goto/16 :goto_0

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {p1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 26
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 27
    :cond_5
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 28
    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v5, p1, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 31
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    :cond_6
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$f;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    .line 33
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->F:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->y()V

    goto/16 :goto_0

    .line 35
    :cond_7
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 36
    :sswitch_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->H:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, p1, v5}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto :goto_0

    .line 37
    :sswitch_7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->I:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;Z)V

    goto :goto_0

    .line 38
    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->w()V

    goto :goto_0

    .line 39
    :sswitch_9
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 40
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x6

    .line 41
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 42
    :cond_8
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 43
    :sswitch_a
    invoke-static {p0, v5}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 44
    :sswitch_b
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 45
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 46
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x7

    .line 47
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_9
    const p1, 0x7f1102ed

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 49
    :cond_a
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :cond_b
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090074 -> :sswitch_b
        0x7f09010f -> :sswitch_a
        0x7f09011c -> :sswitch_9
        0x7f09011f -> :sswitch_8
        0x7f090142 -> :sswitch_7
        0x7f090145 -> :sswitch_6
        0x7f090146 -> :sswitch_5
        0x7f090315 -> :sswitch_4
        0x7f090343 -> :sswitch_3
        0x7f090351 -> :sswitch_2
        0x7f0903b0 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->x()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->receiveStateUpdateResponse(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    .line 6
    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l:Z

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$i;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$i;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$j;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$j;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->b(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->u:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$m;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/j;->a(Lcom/ifengyu/intercom/node/h;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->E:I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->t:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->s:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/q;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->Y:Lcom/ifengyu/intercom/ui/widget/dialog/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->G:Lcom/ifengyu/intercom/ui/widget/dialog/z;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveStateUpdateResponse(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->c(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    :cond_0
    return-void
.end method
