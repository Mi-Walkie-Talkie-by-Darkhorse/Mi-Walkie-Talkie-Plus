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
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, v0, -0x3

    :goto_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_1
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#60"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#62"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#40"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#41"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#35"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_6
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#38"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_7
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#34"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_8
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#39"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_9
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#37"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_a
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#59"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_b
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#43"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_c
    add-int/lit8 v2, v0, 0x1

    const-string v3, "&#45"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
