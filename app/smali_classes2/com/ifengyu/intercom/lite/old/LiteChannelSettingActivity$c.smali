.class Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;
.super Lcom/ifengyu/intercom/lite/base/recycler/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;
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


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ChannelModel;Z)V
    .locals 11

    const p2, 0x7f090482

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(I)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0900ec

    const/16 v3, 0x8

    const v4, 0x7f090159

    const v5, 0x7f090473

    const v6, 0x7f090472

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4, v1}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4, v3}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v2, v1}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v6}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v5}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(I)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v2, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v9

    invoke-direct {v2, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x11

    invoke-virtual {v7, v2, v4, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {v8}, Lcom/ifengyu/library/a/m;->b(F)I

    move-result v3

    invoke-direct {p3, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, p3, v0, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p3, 0x7f090492

    const v0, 0x7f090485

    const v1, 0x7f09046e

    const v2, 0x7f09046f

    if-eqz p4, :cond_1

    const p4, 0x7f0600c4

    invoke-virtual {p1, p2, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f0600c3

    invoke-virtual {p1, v2, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p4, 0x7f0600c5

    invoke-virtual {p1, v1, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v6, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f0600c6

    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, p3, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    goto :goto_1

    :cond_1
    const p4, 0x7f0600c2

    invoke-virtual {p1, p2, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f060034

    invoke-virtual {p1, v2, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p4, 0x7f060032

    invoke-virtual {p1, v1, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v6, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, v0, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    invoke-virtual {p1, p3, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;->a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ChannelModel;Z)V

    return-void
.end method

.method public b(I)I
    .locals 0

    const p1, 0x7f0c00cb

    return p1
.end method
