.class public Lorg/bouncycastle/asn1/eac/Flags;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;
    }
.end annotation


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    iput p1, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return-void
.end method


# virtual methods
.method decode(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;

    const-string v0, " "

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;-><init>(Lorg/bouncycastle/asn1/eac/Flags;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/eac/Flags;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->add(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return v0
.end method

.method public isSet(I)Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return-void
.end method
