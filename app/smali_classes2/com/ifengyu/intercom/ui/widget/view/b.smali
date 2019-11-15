.class public Lcom/ifengyu/intercom/ui/widget/view/b;
.super Ljava/lang/Object;
.source "MyInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:I

    if-gt v0, v3, :cond_2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_2
    return-object v0

    :cond_2
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:I

    if-le v0, v3, :cond_3

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p4, v1, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v3, v0

    move v0, v1

    :goto_3
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:I

    if-gt v3, v2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v0, v3, 0x1

    :goto_4
    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v3, 0x2

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->b:Landroid/widget/EditText;

    const v1, 0x7f090166

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const-string v0, ""

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/b;->a:I

    if-le v3, v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method
