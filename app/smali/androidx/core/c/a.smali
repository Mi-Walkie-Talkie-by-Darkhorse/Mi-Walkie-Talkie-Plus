.class public final Landroidx/core/c/a;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/c/a$b;,
        Landroidx/core/c/a$a;
    }
.end annotation


# static fields
.field static final d:Landroidx/core/c/d;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field static final g:Landroidx/core/c/a;

.field static final h:Landroidx/core/c/a;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Landroidx/core/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/c/e;->c:Landroidx/core/c/d;

    sput-object v0, Landroidx/core/c/a;->d:Landroidx/core/c/d;

    const/16 v0, 0x200e

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/c/a;->e:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/c/a;->f:Ljava/lang/String;

    .line 4
    new-instance v0, Landroidx/core/c/a;

    sget-object v1, Landroidx/core/c/a;->d:Landroidx/core/c/d;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroidx/core/c/a;-><init>(ZILandroidx/core/c/d;)V

    sput-object v0, Landroidx/core/c/a;->g:Landroidx/core/c/a;

    .line 5
    new-instance v0, Landroidx/core/c/a;

    sget-object v1, Landroidx/core/c/a;->d:Landroidx/core/c/d;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Landroidx/core/c/a;-><init>(ZILandroidx/core/c/d;)V

    sput-object v0, Landroidx/core/c/a;->h:Landroidx/core/c/a;

    return-void
.end method

.method constructor <init>(ZILandroidx/core/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/core/c/a;->a:Z

    .line 3
    iput p2, p0, Landroidx/core/c/a;->b:I

    .line 4
    iput-object p3, p0, Landroidx/core/c/a;->c:Landroidx/core/c/d;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroidx/core/c/d;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroidx/core/c/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 3
    iget-boolean v0, p0, Landroidx/core/c/a;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/core/c/a;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    sget-object p1, Landroidx/core/c/a;->e:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroidx/core/c/a;->a:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroidx/core/c/a;->c(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 6
    :cond_2
    sget-object p1, Landroidx/core/c/a;->f:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 1

    .line 22
    invoke-static {p0}, Landroidx/core/c/f;->b(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    .line 7
    new-instance v0, Landroidx/core/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/c/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/c/a$b;->c()I

    move-result p0

    return p0
.end method

.method public static b()Landroidx/core/c/a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/c/a$a;

    invoke-direct {v0}, Landroidx/core/c/a$a;-><init>()V

    invoke-virtual {v0}, Landroidx/core/c/a$a;->a()Landroidx/core/c/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;Landroidx/core/c/d;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroidx/core/c/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 3
    iget-boolean v0, p0, Landroidx/core/c/a;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/core/c/a;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    sget-object p1, Landroidx/core/c/a;->e:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroidx/core/c/a;->a:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroidx/core/c/a;->b(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 6
    :cond_2
    sget-object p1, Landroidx/core/c/a;->f:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/c/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/c/a$b;->d()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 21
    iget-object v0, p0, Landroidx/core/c/a;->c:Landroidx/core/c/d;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/c/a;->a(Ljava/lang/CharSequence;Landroidx/core/c/d;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;Landroidx/core/c/d;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/c/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroidx/core/c/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 11
    sget-object v1, Landroidx/core/c/e;->b:Landroidx/core/c/d;

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/core/c/e;->a:Landroidx/core/c/d;

    .line 12
    :goto_0
    invoke-direct {p0, p1, v1}, Landroidx/core/c/a;->b(Ljava/lang/CharSequence;Landroidx/core/c/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    :cond_2
    iget-boolean v1, p0, Landroidx/core/c/a;->a:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    .line 14
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 16
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 18
    sget-object p2, Landroidx/core/c/e;->b:Landroidx/core/c/d;

    goto :goto_3

    :cond_5
    sget-object p2, Landroidx/core/c/e;->a:Landroidx/core/c/d;

    .line 19
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/core/c/a;->a(Ljava/lang/CharSequence;Landroidx/core/c/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Landroidx/core/c/a;->c:Landroidx/core/c/d;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/c/a;->a(Ljava/lang/String;Landroidx/core/c/d;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroidx/core/c/d;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/c/a;->a(Ljava/lang/CharSequence;Landroidx/core/c/d;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/c/a;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
