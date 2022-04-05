.class public final Lcom/ifengyu/library/a/i;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/g;

    invoke-direct {v0}, La/b/g;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^[1]\\d{10}$"

    invoke-static {v0, p0}, Lcom/ifengyu/library/a/i;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]+$"

    invoke-static {v0, p0}, Lcom/ifengyu/library/a/i;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
