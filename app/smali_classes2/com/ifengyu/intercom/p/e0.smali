.class public Lcom/ifengyu/intercom/p/e0;
.super Ljava/lang/Object;
.source "NameInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1e

    .line 1
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/p/e0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/p/e0;->a:I

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
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p6

    if-ge p3, p6, :cond_2

    add-int/lit8 p6, p3, 0x1

    .line 2
    invoke-interface {p4, p3}, Landroid/text/Spanned;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p3}, Lcom/ifengyu/intercom/p/b0;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p3}, Lcom/ifengyu/intercom/p/b0;->u(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p5, p5, 0x3

    :cond_1
    :goto_1
    move p3, p6

    goto :goto_0

    .line 5
    :cond_2
    iget p3, p0, Lcom/ifengyu/intercom/p/e0;->a:I

    sub-int/2addr p3, p5

    const-string p4, ""

    if-gtz p3, :cond_3

    return-object p4

    :cond_3
    const/4 p5, 0x0

    const/4 p6, 0x0

    .line 6
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p5, v0, :cond_7

    .line 7
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 p6, p6, 0x1

    goto :goto_3

    .line 9
    :cond_4
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p6, p6, 0x3

    :goto_3
    if-le p6, p3, :cond_5

    .line 10
    invoke-interface {p1, p2, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_6
    return-object p4

    :cond_7
    return-object p1
.end method
