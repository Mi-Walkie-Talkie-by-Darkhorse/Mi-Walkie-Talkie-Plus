.class final Lcom/qmuiteam/qmui/link/QMUILinkify$c;
.super Ljava/lang/Object;
.source "QMUILinkify.java"

# interfaces
.implements Lcom/qmuiteam/qmui/link/QMUILinkify$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)Z
    .locals 4

    move v0, p2

    :goto_0
    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, p3, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le v3, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_1
    :try_start_1
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ge p3, v1, :cond_2

    const-string v0, "[$]"

    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p3, :cond_2

    return v2

    :catch_0
    nop

    :cond_2
    if-nez p2, :cond_3

    return v3

    :cond_3
    sub-int/2addr p2, v3

    .line 4
    :try_start_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_4

    return v2

    :catch_1
    :cond_4
    return v3
.end method
