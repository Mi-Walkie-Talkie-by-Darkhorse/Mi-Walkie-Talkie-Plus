.class public Lorg/bouncycastle/asn1/cmp/PollRepContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

.field private checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

.field private reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/cmp/PollRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-array v0, v2, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    new-array v0, v2, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    new-array v0, v2, [Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object p2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aput-object p3, v0, v1

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    aput-object v2, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollRepContent;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PollRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertReqId(I)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCheckAfter(I)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getReason(I)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
