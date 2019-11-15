.class public Lorg/bouncycastle/asn1/cms/KEKIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid KEKIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    :goto_0
    :pswitch_1
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KEKIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getOther()Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
