.class public Lorg/bouncycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_6

    const/16 v2, 0x23

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 p1, p1, -0x3

    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#41"

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#40"

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#39"

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#38"

    goto :goto_1

    :pswitch_4
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#37"

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#60"

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#59"

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#62"

    goto :goto_1

    :cond_3
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#45"

    goto :goto_1

    :cond_4
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#43"

    goto :goto_1

    :cond_5
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#35"

    goto :goto_1

    :cond_6
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#34"

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
