.class Lcom/ifengyu/intercom/ui/adapter/d$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DolphinRelayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/ifengyu/intercom/ui/adapter/d;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/d;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1002ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->a:Landroid/widget/TextView;

    const v0, 0x7f1002ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->b:Landroid/widget/TextView;

    const v0, 0x7f1002af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    const/16 v8, 0x7c

    const/16 v7, 0x28

    const v6, 0x7f09006e

    const/16 v5, 0x21

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v1

    sget-object v2, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v1

    if-ne v1, v8, :cond_2

    :cond_0
    invoke-static {v6}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->d(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->e(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->g(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->j(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    sget-object v3, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    if-eq v1, v7, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v1

    if-ne v1, v8, :cond_5

    :cond_1
    invoke-static {v6}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->d(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->e(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->g(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->j(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_2
    sget-object v1, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v2

    aget-object v1, v1, v2

    goto/16 :goto_0

    :cond_3
    invoke-static {v6}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->i(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v3

    aget-object v1, v1, v3

    goto/16 :goto_2

    :cond_6
    invoke-static {v6}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->i(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$b;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3
.end method
