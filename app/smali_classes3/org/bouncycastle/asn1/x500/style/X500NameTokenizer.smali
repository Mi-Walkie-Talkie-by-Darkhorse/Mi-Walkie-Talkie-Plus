.class public Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iput-char p2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_6

    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    if-nez v0, :cond_8

    if-nez v2, :cond_1

    move v0, v4

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_3

    :cond_4
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v4

    goto :goto_3

    :cond_5
    iget-char v6, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v5, v6, :cond_7

    :cond_6
    iput v3, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method
