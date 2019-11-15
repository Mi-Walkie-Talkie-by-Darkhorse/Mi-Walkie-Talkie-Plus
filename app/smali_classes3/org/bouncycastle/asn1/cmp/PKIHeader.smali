.class public Lorg/bouncycastle/asn1/cmp/PKIHeader;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final CMP_1999:I = 0x1

.field public static final CMP_2000:I = 0x2

.field public static final NULL_NAME:Lorg/bouncycastle/asn1/x509/GeneralName;


# instance fields
.field private freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private pvno:Lorg/bouncycastle/asn1/ASN1Integer;

.field private recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private sender:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->NULL_NAME:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/asn1/cmp/PKIHeader;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIHeader;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFreeText()Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public getGeneralInfo()[Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getMessageTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPvno()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getRecipKID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipient()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSender()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSenderKID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSenderNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getTransactionID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
