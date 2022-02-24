.class public Lcom/qmuiteam/qmui/link/QMUILinkify;
.super Ljava/lang/Object;
.source "QMUILinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/link/QMUILinkify$j;,
        Lcom/qmuiteam/qmui/link/QMUILinkify$k;,
        Lcom/qmuiteam/qmui/link/QMUILinkify$g;,
        Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;,
        Lcom/qmuiteam/qmui/link/QMUILinkify$i;,
        Lcom/qmuiteam/qmui/link/QMUILinkify$h;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field private static c:Lcom/qmuiteam/qmui/link/QMUILinkify$j;

.field public static final d:Lcom/qmuiteam/qmui/link/QMUILinkify$h;

.field public static final e:Lcom/qmuiteam/qmui/link/QMUILinkify$h;

.field public static final f:Lcom/qmuiteam/qmui/link/QMUILinkify$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\+?(\\d{2,8}([- ]?\\d{3,8}){2,6}|\\d{5,20})"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify;->a:Ljava/util/regex/Pattern;

    const-string v0, "^\\d+(\\.\\d+)+(-\\d+)*$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify;->b:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$a;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/QMUILinkify$a;-><init>()V

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/QMUILinkify$b;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify;->c:Lcom/qmuiteam/qmui/link/QMUILinkify$j;

    .line 5
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$c;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/QMUILinkify$c;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify;->d:Lcom/qmuiteam/qmui/link/QMUILinkify$h;

    .line 6
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$d;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/QMUILinkify$d;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify;->e:Lcom/qmuiteam/qmui/link/QMUILinkify$h;

    .line 7
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$e;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/QMUILinkify$e;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify;->f:Lcom/qmuiteam/qmui/link/QMUILinkify$i;

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)Ljava/lang/String;
    .locals 9

    if-eqz p3, :cond_0

    .line 14
    invoke-interface {p3, p2, p0}, Lcom/qmuiteam/qmui/link/QMUILinkify$i;->a(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    :cond_0
    array-length p2, p1

    const/4 p3, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, p2, :cond_2

    aget-object v8, p1, v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, v8

    .line 17
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, v8

    .line 19
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_3

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_1
    if-nez v7, :cond_4

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static a(Ljava/lang/String;IILandroid/text/Spannable;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/qmuiteam/qmui/span/c;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$6;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/qmuiteam/qmui/link/QMUILinkify$6;-><init>(Ljava/lang/String;Lcom/qmuiteam/qmui/span/c;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/16 p0, 0x21

    invoke-interface {p3, v0, p1, p2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$g;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/qmuiteam/qmui/link/QMUILinkify$f;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/link/QMUILinkify$f;-><init>()V

    .line 62
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 64
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;

    add-int/lit8 v3, v1, 0x1

    .line 65
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/link/QMUILinkify$g;

    .line 66
    iget v5, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->b:I

    iget v6, v4, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->b:I

    if-gt v5, v6, :cond_3

    iget v2, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->c:I

    if-le v2, v6, :cond_3

    .line 67
    iget v4, v4, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->c:I

    const/4 v7, -0x1

    if-gt v4, v2, :cond_0

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_0
    sub-int v8, v2, v5

    sub-int v9, v4, v6

    if-le v8, v9, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v5

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v7, :cond_3

    .line 68
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$g;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    new-instance v3, Lcom/qmuiteam/qmui/link/QMUILinkify$g;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/qmuiteam/qmui/link/QMUILinkify$g;-><init>(Lcom/qmuiteam/qmui/link/QMUILinkify$a;)V

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v2, v0

    .line 55
    iput v2, v3, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->b:I

    add-int/2addr v0, v4

    .line 56
    iput v0, v3, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->c:I

    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "UTF-8"

    .line 58
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/qmuiteam/qmui/link/QMUILinkify$h;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$g;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$h;",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$i;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 25
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    if-eqz p4, :cond_1

    .line 26
    invoke-interface {p4, p1, v0, v1}, Lcom/qmuiteam/qmui/link/QMUILinkify$h;->a(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    :cond_1
    new-instance v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/qmuiteam/qmui/link/QMUILinkify$g;-><init>(Lcom/qmuiteam/qmui/link/QMUILinkify$a;)V

    const/4 v3, 0x0

    .line 28
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, p2, p5}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->a:Ljava/lang/String;

    .line 29
    iput v0, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->b:I

    .line 30
    iput v1, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->c:I

    .line 31
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/qmuiteam/qmui/link/QMUILinkify$h;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$g;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$h;",
            "Lcom/qmuiteam/qmui/link/QMUILinkify$i;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/lang/CharSequence;[Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 36
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    if-eqz p5, :cond_2

    .line 37
    invoke-interface {p5, p1, v0, v1}, Lcom/qmuiteam/qmui/link/QMUILinkify$h;->a(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :cond_2
    new-instance v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/qmuiteam/qmui/link/QMUILinkify$g;-><init>(Lcom/qmuiteam/qmui/link/QMUILinkify$a;)V

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p4, p2, p6}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->a:Ljava/lang/String;

    .line 40
    iput v0, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->b:I

    .line 41
    iput v1, v2, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->c:I

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(Landroid/text/Spannable;ILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/qmuiteam/qmui/span/c;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 2
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 3
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcom/qmuiteam/qmui/link/QMUILinkify;->c:Lcom/qmuiteam/qmui/link/QMUILinkify$j;

    invoke-interface {v2}, Lcom/qmuiteam/qmui/link/QMUILinkify$j;->a()Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v2, "http://"

    const-string v4, "https://"

    const-string v5, "rtsp://"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/qmuiteam/qmui/link/QMUILinkify;->d:Lcom/qmuiteam/qmui/link/QMUILinkify$h;

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/qmuiteam/qmui/link/QMUILinkify$h;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)V

    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 6
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v2, "mailto:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/qmuiteam/qmui/link/QMUILinkify$h;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)V

    :cond_3
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    .line 7
    sget-object v6, Lcom/qmuiteam/qmui/link/QMUILinkify;->a:Ljava/util/regex/Pattern;

    new-array v7, v3, [Ljava/util/regex/Pattern;

    sget-object v2, Lcom/qmuiteam/qmui/link/QMUILinkify;->b:Ljava/util/regex/Pattern;

    aput-object v2, v7, v0

    const-string v2, "tel:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/qmuiteam/qmui/link/QMUILinkify;->e:Lcom/qmuiteam/qmui/link/QMUILinkify$h;

    sget-object v10, Lcom/qmuiteam/qmui/link/QMUILinkify;->f:Lcom/qmuiteam/qmui/link/QMUILinkify$i;

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/qmuiteam/qmui/link/QMUILinkify$h;Lcom/qmuiteam/qmui/link/QMUILinkify$i;)V

    :cond_4
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    .line 8
    invoke-static {v1, p0}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 9
    :cond_5
    invoke-static {v1}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/util/ArrayList;)V

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 11
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/link/QMUILinkify$g;

    .line 12
    iget-object v4, v0, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->a:Ljava/lang/String;

    iget v5, v0, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->b:I

    iget v6, v0, Lcom/qmuiteam/qmui/link/QMUILinkify$g;->c:I

    move-object v7, p0

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-static/range {v4 .. v10}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/lang/String;IILandroid/text/Spannable;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/qmuiteam/qmui/span/c;)V

    goto :goto_1

    :cond_7
    return v3
.end method

.method private static a(Ljava/lang/CharSequence;)Z
    .locals 6

    .line 47
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    .line 48
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 49
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-le v4, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static a(Ljava/lang/CharSequence;[Ljava/util/regex/Pattern;)Z
    .locals 3

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 44
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/qmuiteam/qmui/link/QMUILinkify;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
