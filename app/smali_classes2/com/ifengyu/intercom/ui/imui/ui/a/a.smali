.class public Lcom/ifengyu/intercom/ui/imui/ui/a/a;
.super Ljava/lang/Object;
.source "MyInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;


# instance fields
.field private c:Ljava/nio/charset/Charset;

.field private d:I

.field private e:Lcom/ifengyu/intercom/ui/imui/ui/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GB2312"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->a:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->c:Ljava/nio/charset/Charset;

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->c:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->d:I

    if-gt v0, v3, :cond_0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->d:I

    if-le v0, v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p4, v1, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v3, v0

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->d:I

    if-gt v3, v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->d:I

    if-le v3, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->e:Lcom/ifengyu/intercom/ui/imui/ui/a/a$a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/a/a;->e:Lcom/ifengyu/intercom/ui/imui/ui/a/a$a;

    invoke-interface {v2}, Lcom/ifengyu/intercom/ui/imui/ui/a/a$a;->a()V

    :cond_3
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method
