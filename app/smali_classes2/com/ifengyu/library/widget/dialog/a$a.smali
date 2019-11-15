.class public Lcom/ifengyu/library/widget/dialog/a$a;
.super Lcom/ifengyu/library/widget/dialog/b;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/library/widget/dialog/b",
        "<",
        "Lcom/ifengyu/library/widget/dialog/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/text/method/TransformationMethod;

.field protected b:Landroid/widget/EditText;

.field protected c:[Landroid/text/InputFilter;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->s:I

    new-instance v0, Lcom/ifengyu/library/widget/view/ClearEditText;

    invoke-direct {v0, p1}, Lcom/ifengyu/library/widget/view/ClearEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    sget v1, Lcom/ifengyu/library/R$color;->black60:I

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    sget v1, Lcom/ifengyu/library/R$drawable;->dialog_edittext_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ifengyu/library/widget/dialog/a$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a([Landroid/text/InputFilter;)Lcom/ifengyu/library/widget/dialog/a$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->c:[Landroid/text/InputFilter;

    return-object p0
.end method

.method protected a(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
    .locals 5

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41400000    # 12.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->a:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->a:Landroid/text/method/TransformationMethod;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->c:[Landroid/text/InputFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->c:[Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->f:Landroid/content/Context;

    sget v3, Lcom/ifengyu/library/R$color;->black30:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/library/widget/dialog/a$a;->b:Landroid/widget/EditText;

    iget v2, p0, Lcom/ifengyu/library/widget/dialog/a$a;->s:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected b(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ifengyu/library/widget/dialog/b;->b(Lcom/ifengyu/library/widget/dialog/a;Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/dialog/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
