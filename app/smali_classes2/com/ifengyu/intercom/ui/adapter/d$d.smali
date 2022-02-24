.class Lcom/ifengyu/intercom/ui/adapter/d$d;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "DolphinRelayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/ifengyu/intercom/ui/adapter/d;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f09048d

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->a:Landroid/widget/TextView;

    const p1, 0x7f09048e

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->b:Landroid/widget/TextView;

    const p1, 0x7f090488

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->a(Lcom/ifengyu/intercom/ui/adapter/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x7c

    const/16 v3, 0x28

    const v4, 0x7f110095

    if-ge v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v4}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v5, " / "

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->d(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v1, v6, v0, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->e(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->f(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->g(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->h(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->i(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v7}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    :goto_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/adapter/d;->j(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 25
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v1

    sget-object v6, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 26
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 27
    :cond_4
    sget-object v1, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_4

    .line 29
    :cond_5
    :goto_3
    invoke-static {v4}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 30
    :cond_6
    invoke-static {v4}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/d;->d(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->e(Lcom/ifengyu/intercom/ui/adapter/d;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 34
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->g(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/adapter/d;->i(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 36
    :goto_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->c(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/d$d;->d:Lcom/ifengyu/intercom/ui/adapter/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/d;->j(Lcom/ifengyu/intercom/ui/adapter/d;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
