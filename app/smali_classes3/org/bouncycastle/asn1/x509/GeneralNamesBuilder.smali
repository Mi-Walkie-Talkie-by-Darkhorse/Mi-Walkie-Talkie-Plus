.class public Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;
.super Ljava/lang/Object;


# instance fields
.field private names:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addName(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addNames(Lorg/bouncycastle/asn1/x509/GeneralNames;)Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>([Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-object v0
.end method
