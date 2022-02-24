.class public Lcom/ifengyu/intercom/ui/widget/view/a;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p5, 0x0

    .line 1
    :goto_0
    iget p6, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->a:I

    const-string v0, ""

    if-gt p3, p6, :cond_2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p6

    if-ge p5, p6, :cond_2

    add-int/lit8 p6, p5, 0x1

    .line 2
    invoke-interface {p4, p5}, Landroid/text/Spanned;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p5

    .line 3
    invoke-static {p5}, Lcom/ifengyu/intercom/i/c0;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p5}, Lcom/ifengyu/intercom/i/c0;->d(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    add-int/lit8 p3, p3, 0x2

    :goto_1
    move p5, p6

    goto :goto_0

    :cond_1
    return-object v0

    .line 5
    :cond_2
    iget p6, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->a:I

    if-le p3, p6, :cond_3

    add-int/lit8 p5, p5, -0x1

    .line 6
    invoke-interface {p4, p2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p4, 0x0

    .line 7
    :goto_2
    iget p5, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->a:I

    if-gt p3, p5, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-ge p4, p5, :cond_6

    add-int/lit8 p5, p4, 0x1

    .line 8
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p4

    .line 9
    invoke-static {p4}, Lcom/ifengyu/intercom/i/c0;->h(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 10
    :cond_4
    invoke-static {p4}, Lcom/ifengyu/intercom/i/c0;->d(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    add-int/lit8 p3, p3, 0x2

    :goto_3
    move p4, p5

    goto :goto_2

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->b:Landroid/widget/EditText;

    const p2, 0x7f11025c

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 12
    :cond_6
    iget p5, p0, Lcom/ifengyu/intercom/ui/widget/view/a;->a:I

    if-le p3, p5, :cond_7

    add-int/lit8 p4, p4, -0x1

    .line 13
    :cond_7
    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
