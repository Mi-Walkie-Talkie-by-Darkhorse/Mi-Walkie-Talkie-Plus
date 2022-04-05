.class Lcom/ifengyu/intercom/ui/adapter/m$c;
.super Landroidx/recyclerview/widget/RecyclerView$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/ifengyu/intercom/ui/adapter/m;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/m;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f090462

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->a:Landroid/widget/TextView;

    const p1, 0x7f090463

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->b:Landroid/widget/TextView;

    const p1, 0x7f090464

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->c:Landroid/widget/TextView;

    const p1, 0x7f090460

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->d:Landroid/widget/TextView;

    const p1, 0x7f090088

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->a(Lcom/ifengyu/intercom/ui/adapter/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "C%02d"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->g(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->h(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->i(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->j(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->j(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->k(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->l(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->m(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->m(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    rem-int/lit16 v0, v0, 0x100

    const v1, 0x7f1100c6

    const-string v2, " / "

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/m;->c(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->g(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/m;->d(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/m;->e(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v3

    rem-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/m;->c(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->g(Lcom/ifengyu/intercom/ui/adapter/m;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->d(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/m;->e(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->n(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->f(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$c;->f:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/m;->f(Lcom/ifengyu/intercom/ui/adapter/m;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
