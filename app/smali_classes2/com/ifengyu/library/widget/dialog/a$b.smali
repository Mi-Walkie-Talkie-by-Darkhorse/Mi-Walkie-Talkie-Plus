.class public Lcom/ifengyu/library/widget/dialog/a$b;
.super Lcom/ifengyu/library/widget/dialog/b;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/dialog/b",
        "<",
        "Lcom/ifengyu/library/widget/dialog/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Ljava/lang/CharSequence;

.field protected c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/dialog/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/a$b;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected a(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
    .locals 9

    const/4 v3, -0x1

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x11

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$b;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$b;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->f:Landroid/content/Context;

    sget v3, Lcom/ifengyu/library/R$color;->black:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->f:Landroid/content/Context;

    sget v3, Lcom/ifengyu/library/R$color;->black:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/widget/Space;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
