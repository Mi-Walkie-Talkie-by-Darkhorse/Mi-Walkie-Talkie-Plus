.class Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;
.super Lcom/ifengyu/intercom/lite/base/recycler/c;
.source "ConfigFileDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/lite/base/recycler/c<",
        "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    sget-object p2, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    const-string v0, "Kmedium"

    invoke-direct {p1, v0, p2}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;->k:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    .line 3
    new-instance p1, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    sget-object p2, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    const-string v0, "MI_LanTing_GB_Outside_YS_V2.3"

    invoke-direct {p1, v0, p2}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "/"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 21
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 23
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;->k:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ChannelModel;Z)V
    .locals 6

    .line 2
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object p2

    const p4, 0x7f090482

    invoke-virtual {p1, p4, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 3
    sget-object p2, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    invoke-virtual {p1, p2, v1}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(Landroid/graphics/Typeface;[I)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 4
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result p2

    const p4, 0x7f090469

    const v1, 0x7f090221

    const v3, 0x7f09049b

    const v4, 0x7f090468

    const v5, 0x7f09049a

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 6
    invoke-virtual {p1, v4, v2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 7
    invoke-virtual {p1, v3, v2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 8
    invoke-virtual {p1, p4, v2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 9
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 10
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f1101ab

    .line 11
    invoke-virtual {p1, v4, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->b(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const/high16 p2, 0x41900000    # 18.0f

    .line 12
    invoke-static {p2}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(IF)Lcom/ifengyu/intercom/lite/base/recycler/d;

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 13
    invoke-virtual {p1, v1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 14
    invoke-virtual {p1, v4, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 15
    invoke-virtual {p1, v3, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 16
    invoke-virtual {p1, p4, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 17
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/base/recycler/c;->d:Landroid/content/Context;

    const p3, 0x7f110189

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 18
    sget-object p2, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    new-array p3, v0, [I

    aput v5, p3, v2

    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(Landroid/graphics/Typeface;[I)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const/high16 p2, 0x41700000    # 15.0f

    .line 19
    invoke-static {p2}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(IF)Lcom/ifengyu/intercom/lite/base/recycler/d;

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;->a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ChannelModel;Z)V

    return-void
.end method

.method public b(I)I
    .locals 0

    const p1, 0x7f0c00cc

    return p1
.end method
