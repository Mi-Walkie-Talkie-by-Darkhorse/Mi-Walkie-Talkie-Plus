.class Lcom/ifengyu/intercom/l/a/b/b/y$a;
.super Lcom/ifengyu/intercom/device/lite/base/recycler/c;
.source "BaseConfigFileDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/l/a/b/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/device/lite/base/recycler/c<",
        "Lcom/ifengyu/intercom/models/ChannelModel;",
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
            "Lcom/ifengyu/intercom/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    sget-object p2, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    const-string v0, "Kmedium"

    invoke-direct {p1, v0, p2}, Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/y$a;->k:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    return-void
.end method

.method private w(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/a/b/b/y$a;->k:Lcom/qmuiteam/qmui/span/QMUICustomTypefaceSpan;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic e(Lcom/ifengyu/intercom/device/lite/base/recycler/d;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/l/a/b/b/y$a;->v(Lcom/ifengyu/intercom/device/lite/base/recycler/d;ILcom/ifengyu/intercom/models/ChannelModel;Z)V

    return-void
.end method

.method public j(I)I
    .locals 0

    const p1, 0x7f0c0109

    return p1
.end method

.method public v(Lcom/ifengyu/intercom/device/lite/base/recycler/d;ILcom/ifengyu/intercom/models/ChannelModel;Z)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getLiteDisplaySeq()Ljava/lang/String;

    move-result-object p2

    const p4, 0x7f0904ee

    invoke-virtual {p1, p4, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->d(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 2
    sget-object p2, Lcom/ifengyu/intercom/j/a;->b:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    invoke-virtual {p1, p2, v1}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->g(Landroid/graphics/Typeface;[I)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 3
    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result p2

    const p4, 0x7f0904cd

    const v1, 0x7f09028a

    const v3, 0x7f090507

    const v4, 0x7f0904cc

    const v5, 0x7f090506

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 5
    invoke-virtual {p1, v4, v2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 6
    invoke-virtual {p1, v3, v2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 7
    invoke-virtual {p1, p4, v2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 8
    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/l/a/b/b/y$a;->w(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->d(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 9
    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/l/a/b/b/y$a;->w(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->d(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    const p2, 0x7f110242

    .line 10
    invoke-virtual {p1, v4, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    const/high16 p2, 0x41900000    # 18.0f

    .line 11
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->f(IF)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 12
    invoke-virtual {p1, v1, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 13
    invoke-virtual {p1, v4, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 14
    invoke-virtual {p1, v3, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 15
    invoke-virtual {p1, p4, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->h(II)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 16
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->d:Landroid/content/Context;

    const p3, 0x7f110226

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->d(ILjava/lang/CharSequence;)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    .line 17
    sget-object p2, Lcom/ifengyu/intercom/j/a;->a:Landroid/graphics/Typeface;

    new-array p3, v0, [I

    aput v5, p3, v2

    invoke-virtual {p1, p2, p3}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->g(Landroid/graphics/Typeface;[I)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    const/high16 p2, 0x41700000    # 15.0f

    .line 18
    invoke-static {p2}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/d;->f(IF)Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    :goto_0
    return-void
.end method
