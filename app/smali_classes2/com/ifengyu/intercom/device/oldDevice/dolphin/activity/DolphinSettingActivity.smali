.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "DolphinSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;


# instance fields
.field private A:I

.field private B:Landroid/graphics/Typeface;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Lcom/ifengyu/intercom/ui/widget/dialog/c;

.field private Q:Ljava/lang/String;

.field private R:Lcom/ifengyu/intercom/i/u0;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CheckBox;

.field n:Landroid/view/View;

.field o:Landroid/view/View;

.field p:Landroid/view/View;

.field q:Landroid/view/View;

.field r:Landroid/view/View;

.field s:Landroid/view/View;

.field t:Landroid/view/View;

.field u:Landroid/widget/LinearLayout;

.field private v:I

.field private w:Ljava/lang/Runnable;

.field private x:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field private z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    return p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    return p1
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->b0()V

    return-void
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->c0(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    return-void
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private L(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "deviceId"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "active"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/n/a;->Q(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/e;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/e;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$j;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private M()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->s(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/r;)V

    .line 2
    invoke-static {p0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1102dd

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const v0, 0x7f110105

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const v2, 0x7f1100ae

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08018e

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->d(ZI)V

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$m;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$m;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private N(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->H:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->K:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    const v2, 0x7f0903ad

    const v3, 0x7f0903ab

    const v4, 0x7f0903aa

    const v5, 0x7f0c007d

    const v6, 0x7f09033a

    const v7, 0x7f090339

    const v8, 0x7f0c007c

    if-ne p1, v1, :cond_0

    .line 10
    invoke-static {p0, v5, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->H:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->H:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, v8, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    .line 17
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    .line 19
    iget-object v9, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    const v9, 0x7f090186

    invoke-virtual {p1, v9}, Landroid/view/View;->setId(I)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    const/4 p2, 0x0

    const v9, 0x7f09042e

    if-ne p1, v1, :cond_1

    .line 23
    invoke-static {p0, v5, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    .line 24
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->K:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->K:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p0, v8, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    .line 31
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    .line 34
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    const p2, 0x7f090183

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 36
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 38
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private O(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_0

    const p1, 0x7f0c0167

    .line 6
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v0, 0x7f0903a7

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v0, 0x7f0903a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v0, 0x7f09033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0166

    .line 12
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v0, 0x7f090339

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v0, 0x7f09033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v0, 0x7f090425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private P(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const p1, 0x7f1103b7

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const p1, 0x7f1103db

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    const p1, 0x7f110356

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 8
    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 9
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f1102ea

    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const p2, 0x7f1103c2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinCHSettingActivity;->O(Landroid/content/Context;Ljava/lang/String;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V

    goto :goto_0

    :cond_5
    const p1, 0x7f110105

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private R(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private S()V
    .locals 8

    const v0, 0x7f09048e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090491

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f110169

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0903c2

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->n:Landroid/view/View;

    const v0, 0x7f090153

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->o:Landroid/view/View;

    const v0, 0x7f090187

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->p:Landroid/view/View;

    const v0, 0x7f090378

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->q:Landroid/view/View;

    const v0, 0x7f090070

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->r:Landroid/view/View;

    const v0, 0x7f09015b

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->s:Landroid/view/View;

    const v0, 0x7f090141

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->t:Landroid/view/View;

    const v0, 0x7f09029f

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f090156

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f090125

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f090071

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f090188

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    const v0, 0x7f090379

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    .line 17
    sget-object v0, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    const v0, 0x7f09049d

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903af

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    .line 29
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->show()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->j:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f1102a7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-static {v4}, Lcom/ifengyu/intercom/p/d0;->l(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic T(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "DolphinSettingActivity"

    const-string v0, "activateDevice success"

    .line 1
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic U(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic V()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 2
    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->E(Ljava/lang/Class;)V

    return-void
.end method

.method private synthetic X()V
    .locals 4

    const v0, 0x7f110407

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    const v0, 0x7f08018f

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 6
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 7
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic Z(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/u0;->p1()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->show()V

    :cond_1
    return-void
.end method

.method private b0()V
    .locals 4

    const v0, 0x7f110406

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f08018e

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 7
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 8
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c0(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_7

    .line 3
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    const/4 v1, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 5
    iput v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/u0;->t1()V

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasShareLoc()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getShareLoc()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasStateMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v3, :cond_5

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v2, :cond_6

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->hasDevNameGBK()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->j:Landroid/widget/TextView;

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

    .line 17
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 18
    :cond_7
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->NOTSUPPORT:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, p1, :cond_8

    .line 19
    iput v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    const p1, 0x7f080187

    .line 20
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    const p1, 0x7f1102ef

    .line 21
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 22
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    :cond_8
    :goto_2
    return-void
.end method

.method private d0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DOUBLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/u0;->m1(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V

    return-void
.end method

.method private e0()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/u0;->n1(I)V

    return-void
.end method

.method private f0(Lcom/ifengyu/intercom/event/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O:Landroid/widget/TextView;

    const v1, 0x7f0c0166

    .line 5
    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v1, 0x7f090339

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v1, 0x7f09033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    const v1, 0x7f090425

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12
    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    new-instance v0, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v0, p2}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->m(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic W()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->V()V

    return-void
.end method

.method public synthetic Y()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->X()V

    return-void
.end method

.method public synthetic a0(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Z(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V

    return-void
.end method

.method public g0(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 8

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 6
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    const v3, 0x7f0c007c

    .line 12
    invoke-static {p0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    const v5, 0x7f090339

    .line 13
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    .line 14
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    const v6, 0x7f09033a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    .line 15
    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    const v7, 0x7f090186

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 17
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-static {p0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    const v3, 0x7f09042e

    .line 19
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    .line 22
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    const v3, 0x7f090183

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 24
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 26
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->D:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->E:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->DIFFER:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-ne v1, v4, :cond_3

    .line 34
    iput v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    const v1, 0x7f1100a1

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 36
    :cond_3
    iput v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    .line 37
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    new-instance v7, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v7, v0}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v7}, Lcom/ifengyu/intercom/p/b0;->m(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_2
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 41
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    if-ne p1, v4, :cond_7

    .line 44
    iput v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    .line 45
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    const v0, 0x7f110097

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 46
    :cond_7
    iput v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->A:I

    .line 47
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    new-instance v0, Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/bean/ChannelBean;-><init>(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->m(Lcom/ifengyu/intercom/bean/ChannelBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 48
    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 51
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 52
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v2, v3, :cond_a

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v2

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v2, v4, :cond_9

    goto :goto_5

    .line 53
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->f0(Lcom/ifengyu/intercom/event/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    goto :goto_6

    :cond_a
    :goto_5
    const p1, 0x7f0c016a

    .line 54
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090483

    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090087

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    if-ne p1, v3, :cond_b

    const p1, 0x7f110149

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f11014a

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    const p1, 0x7f110147

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f110148

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 64
    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 67
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->f0(Lcom/ifengyu/intercom/event/StateUpdateEvent;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public h0(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 6

    if-eqz p1, :cond_15

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    .line 7
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/p/b0;->n(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v3, v4, :cond_1

    .line 11
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->I:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->n(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 23
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 28
    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 29
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->TEAM:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-eq v3, v4, :cond_9

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object v3

    sget-object v5, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->SCAN:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne v3, v5, :cond_b

    :cond_9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v3

    if-nez v3, :cond_b

    const p1, 0x7f0c016a

    .line 30
    invoke-static {p0, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090483

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090087

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 34
    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    if-ne p1, v4, :cond_a

    const p1, 0x7f110149

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f11014a

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    const p1, 0x7f110147

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f110148

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 40
    :cond_b
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    .line 41
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->n(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 43
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v2, v3, :cond_e

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v2, :cond_c

    goto :goto_3

    .line 44
    :cond_c
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_d

    .line 45
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 47
    :cond_d
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 48
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 49
    :cond_f
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 50
    :cond_10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 53
    iput-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 54
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V

    .line 55
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->b(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->n(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->hasFreq()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 57
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_M:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-eq v2, v3, :cond_13

    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->TEAM_S:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    if-ne p1, v2, :cond_11

    goto :goto_4

    .line 58
    :cond_11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getType()Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;->RELAY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;

    if-ne p1, v1, :cond_12

    .line 59
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq2()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 61
    :cond_12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;->getFreq()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 62
    :cond_13
    :goto_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 63
    :cond_14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_5
    return-void
.end method

.method public i(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->v(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->j()I

    move-result v0

    const v1, 0x10006

    const-string v2, "device_mac_address"

    const-string v3, "key_mcu_server_version_code"

    const-string v4, "versionCode"

    const-string v5, "key_update_type"

    if-nez p1, :cond_3

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/DolphinUpdateMcuActivity;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lt v0, v1, :cond_1

    const-string v0, "update_type_mcu_ble"

    goto :goto_0

    :cond_1
    const-string v0, "update_type_mcu"

    .line 8
    :goto_0
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 13
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v1, :cond_9

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/DolphinUpdateMcuActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v0

    const-string v1, "update_diff_language"

    const-string v2, "update_type_all_is_newest"

    if-eqz v0, :cond_5

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v6, "mcu_language_type_english"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v6, "mcu_language_type_chinese"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 30
    :cond_7
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_9
    const p1, 0x7f110385

    .line 32
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    :cond_a
    :goto_2
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
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f11039e

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const p2, 0x7f110420

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

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
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->k:Landroid/widget/TextView;

    const p3, 0x7f1102a7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    const p3, 0xea60

    mul-int p1, p1, p3

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/ifengyu/intercom/p/d0;->y0(Ljava/lang/String;J)V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->e()Lcom/ifengyu/intercom/service/ShareLocationService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->e()Lcom/ifengyu/intercom/service/ShareLocationService;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/service/ShareLocationService;->o(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x1388

    const v2, 0x7f110318

    const v3, 0x7f08018e

    const/4 v4, 0x1

    const v5, 0x7f110105

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1, v4}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz p1, :cond_b

    .line 6
    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V

    goto/16 :goto_0

    .line 7
    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/u0;->D0()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f11013a

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v6, p1, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    const p1, 0x7f08018f

    .line 10
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 11
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 12
    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->B(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 14
    :sswitch_3
    new-instance p1, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110388

    .line 15
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f1100bd

    const/4 v1, 0x2

    sget-object v2, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/b;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/b;

    .line 16
    invoke-virtual {p1, v6, v0, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f1100c6

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$i;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    .line 17
    invoke-virtual {p1, v6, v0, v6, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v0, 0x7f120100

    .line 18
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 20
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v4, p1, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 23
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    :cond_3
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$h;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$h;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 25
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->e0()V

    goto/16 :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 29
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 30
    :cond_5
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 31
    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v4, p1, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->D(ZZLjava/lang/String;I)V

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 34
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    :cond_6
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$g;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    .line 36
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->d0()V

    goto/16 :goto_0

    .line 38
    :cond_7
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 39
    :sswitch_6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->y:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0, p1, v4}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V

    goto :goto_0

    .line 40
    :sswitch_7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->z:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;Z)V

    goto :goto_0

    .line 41
    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->M()V

    goto :goto_0

    .line 42
    :sswitch_9
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/SetDolphinBleNameActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    const-string v1, "device_mac_address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x6

    .line 45
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 46
    :cond_8
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 47
    :sswitch_a
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->O(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_b
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 49
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 50
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ifengyu/intercom/ui/activity/AutoSendLocationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x7

    .line 51
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_9
    const p1, 0x7f11039c

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 53
    :cond_a
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :cond_b
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090070 -> :sswitch_b
        0x7f090141 -> :sswitch_a
        0x7f090153 -> :sswitch_9
        0x7f09015b -> :sswitch_8
        0x7f090183 -> :sswitch_7
        0x7f090186 -> :sswitch_6
        0x7f090187 -> :sswitch_5
        0x7f090378 -> :sswitch_4
        0x7f0903af -> :sswitch_3
        0x7f0903c2 -> :sswitch_2
        0x7f090425 -> :sswitch_1
        0x7f09048e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/i/t0;->i(Ljava/lang/String;)Lcom/ifengyu/intercom/i/u0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->S()V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/u0;->v0()Lcom/ifengyu/intercom/event/StateUpdateEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->receiveStateUpdateResponse(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    const-class v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->g:Z

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$k;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$l;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$l;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->t(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onPause()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->q()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onStart()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->v:I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->m:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Z()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R:Lcom/ifengyu/intercom/i/u0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/u0;->t1()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->P:Lcom/ifengyu/intercom/ui/widget/dialog/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/c;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->x:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_1
    return-void
.end method

.method public receiveStateUpdateResponse(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->ST_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    :cond_0
    return-void
.end method
