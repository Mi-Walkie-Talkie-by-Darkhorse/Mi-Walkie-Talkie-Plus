.class Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "DolphinRelayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/w/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f0904f8

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->a:Landroid/widget/TextView;

    const p1, 0x7f0904f9

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->b:Landroid/widget/TextView;

    const p1, 0x7f0904f3

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->e(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/j/a;->f:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x7c

    const/16 v4, 0x28

    const v5, 0x7f1100bf

    if-ge v0, v2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v6

    invoke-static {v6}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v6, " / "

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->h(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v7

    iget-object v8, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v8}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v2, v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->i(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->a:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->j(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->j(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->c:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->j(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->k(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    iget-object v8, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v8}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->a:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->l(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->l(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->c:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->l(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->m(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    iget-object v8, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v8}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    :goto_2
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v7}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->n(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 24
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v2

    array-length v7, v1

    if-ge v2, v7, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v2

    if-ne v2, v3, :cond_4

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_4

    .line 27
    :cond_5
    :goto_3
    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 28
    :cond_6
    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :goto_4
    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 30
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->h(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v3}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 31
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->i(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->k(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->m(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34
    :goto_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->g(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/w/a/b$d;->d:Lcom/ifengyu/intercom/device/oldDevice/w/a/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/w/a/b;->n(Lcom/ifengyu/intercom/device/oldDevice/w/a/b;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
