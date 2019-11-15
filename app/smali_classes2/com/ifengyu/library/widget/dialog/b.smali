.class public abstract Lcom/ifengyu/library/widget/dialog/b;
.super Ljava/lang/Object;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/library/widget/dialog/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected f:Landroid/content/Context;

.field protected g:Lcom/ifengyu/library/widget/dialog/a;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Landroid/view/LayoutInflater;

.field protected l:Ljava/lang/String;

.field protected m:Landroid/widget/FrameLayout;

.field protected n:Landroid/widget/TextView;

.field protected o:Ljava/lang/CharSequence;

.field protected p:Ljava/lang/CharSequence;

.field protected q:Landroid/content/DialogInterface$OnClickListener;

.field protected r:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/dialog/b;->h:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/dialog/b;->i:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/dialog/b;->j:Z

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->k:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/library/widget/dialog/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/b;->b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->o:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/library/widget/dialog/b;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/b;->o:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/library/widget/dialog/b;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/ifengyu/library/widget/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/dialog/b;->i:Z

    return-object p0
.end method

.method protected abstract a(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
.end method

.method public b(I)Lcom/ifengyu/library/widget/dialog/a;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/library/widget/dialog/a;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/library/widget/dialog/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->k:Landroid/view/LayoutInflater;

    sget v1, Lcom/ifengyu/library/R$layout;->dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->m:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->m:Landroid/widget/FrameLayout;

    sget v1, Lcom/ifengyu/library/R$id;->dialog:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/library/widget/dialog/b;->c(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/library/widget/dialog/b;->a(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/library/widget/dialog/b;->d(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->m:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/widget/dialog/a;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/dialog/b;->b(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->g:Lcom/ifengyu/library/widget/dialog/a;

    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->p:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/library/widget/dialog/b;->r:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/library/widget/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/b;->p:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/library/widget/dialog/b;->r:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/b;->l:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public b(Z)Lcom/ifengyu/library/widget/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/dialog/b;->h:Z

    return-object p0
.end method

.method protected b(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected b()Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/ifengyu/library/widget/dialog/a;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/b;->d()Lcom/ifengyu/library/widget/dialog/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/dialog/a;->show()V

    return-object v0
.end method

.method protected c(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/dialog/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->f:Landroid/content/Context;

    sget v2, Lcom/ifengyu/library/R$color;->black:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    sget v1, Lcom/ifengyu/library/R$drawable;->dialog_top_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-static {v5}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->n:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public d()Lcom/ifengyu/library/widget/dialog/a;
    .locals 2

    sget v0, Lcom/ifengyu/library/R$style;->BaseDialog:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/dialog/b;->b(I)Lcom/ifengyu/library/widget/dialog/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/dialog/b;->i:Z

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a;->setCanceledOnTouchOutside(Z)V

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/dialog/b;->h:Z

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/dialog/a;->setCancelable(Z)V

    return-object v0
.end method

.method protected d(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/b;->k:Landroid/view/LayoutInflater;

    sget v1, Lcom/ifengyu/library/R$layout;->dialog_action_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/ifengyu/library/R$id;->btn_left:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/ifengyu/library/R$id;->btn_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/b;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/b;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/ifengyu/library/widget/dialog/b$1;

    invoke-direct {v3, p0}, Lcom/ifengyu/library/widget/dialog/b$1;-><init>(Lcom/ifengyu/library/widget/dialog/b;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/library/widget/dialog/b$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/dialog/b$2;-><init>(Lcom/ifengyu/library/widget/dialog/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
