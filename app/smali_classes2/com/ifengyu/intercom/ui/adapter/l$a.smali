.class Lcom/ifengyu/intercom/ui/adapter/l$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SealCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/ifengyu/intercom/ui/adapter/l;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/l;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1002b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->a:Landroid/widget/TextView;

    const v0, 0x7f1002b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->b:Landroid/widget/TextView;

    const v0, 0x7f1002b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->c:Landroid/widget/TextView;

    const v0, 0x7f1002b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->d:Landroid/widget/TextView;

    const v0, 0x7f1002b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    const v8, 0x7f09009e

    const/16 v7, 0x21

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/l;->a(Lcom/ifengyu/intercom/ui/adapter/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "C%02d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->c(Lcom/ifengyu/intercom/ui/adapter/l;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->d(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->e(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->f(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->f(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v1

    rem-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v1

    rem-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->n(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->n(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->g(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->h(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->i(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->i(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v1

    rem-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->k(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->c(Lcom/ifengyu/intercom/ui/adapter/l;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->l(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v2

    rem-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->k(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->c(Lcom/ifengyu/intercom/ui/adapter/l;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->l(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->m(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/l;->m(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/l$a;->f:Lcom/ifengyu/intercom/ui/adapter/l;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/l;->j(Lcom/ifengyu/intercom/ui/adapter/l;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5
.end method
