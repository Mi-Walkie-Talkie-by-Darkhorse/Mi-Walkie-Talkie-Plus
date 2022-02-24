.class Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;
.super Lcom/ifengyu/intercom/lite/base/recycler/c;
.source "LiteChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;
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

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ChannelModel;Z)V
    .locals 9

    const p2, 0x7f090482

    .line 2
    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(I)Landroid/widget/TextView;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090472

    .line 5
    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(I)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090473

    .line 6
    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->a(I)Landroid/widget/TextView;

    move-result-object v3

    .line 7
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f0900ec

    const/16 v7, 0x8

    const v8, 0x7f090159

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {p1, v8, v5}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 9
    invoke-virtual {p1, v6, v7}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v8, v7}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 11
    invoke-virtual {p1, v6, v5}, Lcom/ifengyu/intercom/lite/base/recycler/d;->d(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    :goto_0
    const v4, 0x7f090492

    const v5, 0x7f090485

    const v6, 0x7f09046e

    const v7, 0x7f09046f

    if-eqz p4, :cond_1

    const p4, 0x7f0600c4

    .line 12
    invoke-virtual {p1, p2, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f0600c3

    .line 13
    invoke-virtual {p1, v7, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p4, 0x7f0600c5

    .line 14
    invoke-virtual {p1, v6, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 16
    invoke-virtual {p1, v2, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f0600c6

    .line 17
    invoke-virtual {p1, v5, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 18
    invoke-virtual {p1, v4, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 19
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/f;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/f;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const p4, 0x7f0600c2

    .line 23
    invoke-virtual {p1, p2, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p2, 0x7f060034

    .line 24
    invoke-virtual {p1, v7, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    const p4, 0x7f060032

    .line 25
    invoke-virtual {p1, v6, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 27
    invoke-virtual {p1, v2, p2}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 28
    invoke-virtual {p1, v5, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 29
    invoke-virtual {p1, v4, p4}, Lcom/ifengyu/intercom/lite/base/recycler/d;->c(II)Lcom/ifengyu/intercom/lite/base/recycler/d;

    .line 30
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreqWithTone()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/f;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreqWithTone()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/ifengyu/intercom/lite/utils/f;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;->a(Lcom/ifengyu/intercom/lite/base/recycler/d;ILcom/ifengyu/intercom/lite/models/ChannelModel;Z)V

    return-void
.end method

.method public b(I)I
    .locals 0

    const p1, 0x7f0c00cb

    return p1
.end method
