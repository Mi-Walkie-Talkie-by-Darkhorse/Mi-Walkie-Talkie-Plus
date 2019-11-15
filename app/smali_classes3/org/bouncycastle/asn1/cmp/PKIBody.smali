.class public Lorg/bouncycastle/asn1/cmp/PKIBody;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final TYPE_CA_KEY_UPDATE_ANN:I = 0xf

.field public static final TYPE_CERT_ANN:I = 0x10

.field public static final TYPE_CERT_CONFIRM:I = 0x18

.field public static final TYPE_CERT_REP:I = 0x3

.field public static final TYPE_CERT_REQ:I = 0x2

.field public static final TYPE_CONFIRM:I = 0x13

.field public static final TYPE_CRL_ANN:I = 0x12

.field public static final TYPE_CROSS_CERT_REP:I = 0xe

.field public static final TYPE_CROSS_CERT_REQ:I = 0xd

.field public static final TYPE_ERROR:I = 0x17

.field public static final TYPE_GEN_MSG:I = 0x15

.field public static final TYPE_GEN_REP:I = 0x16

.field public static final TYPE_INIT_REP:I = 0x1

.field public static final TYPE_INIT_REQ:I = 0x0

.field public static final TYPE_KEY_RECOVERY_REP:I = 0xa

.field public static final TYPE_KEY_RECOVERY_REQ:I = 0x9

.field public static final TYPE_KEY_UPDATE_REP:I = 0x8

.field public static final TYPE_KEY_UPDATE_REQ:I = 0x7

.field public static final TYPE_NESTED:I = 0x14

.field public static final TYPE_P10_CERT_REQ:I = 0x4

.field public static final TYPE_POLL_REP:I = 0x1a

.field public static final TYPE_POLL_REQ:I = 0x19

.field public static final TYPE_POPO_CHALL:I = 0x5

.field public static final TYPE_POPO_REP:I = 0x6

.field public static final TYPE_REVOCATION_ANN:I = 0x11

.field public static final TYPE_REVOCATION_REP:I = 0xc

.field public static final TYPE_REVOCATION_REQ:I = 0xb


# instance fields
.field private body:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private tagNo:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    iget v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private static getBodyForType(ILorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/KeyRecRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KeyRecRepContent;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevReqContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevReqContent;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevRepContent;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertRepMessage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CAKeyUpdAnnContent;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/RevAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RevAnnContent;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CRLAnnContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLAnnContent;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessages;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/GenMsgContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/GenMsgContent;

    move-result-object v0

    goto :goto_0

    :pswitch_16
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/GenRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/GenRepContent;

    move-result-object v0

    goto :goto_0

    :pswitch_17
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/ErrorMsgContent;

    move-result-object v0

    goto :goto_0

    :pswitch_18
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v0

    goto :goto_0

    :pswitch_19
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollReqContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollReqContent;

    move-result-object v0

    goto :goto_0

    :pswitch_1a
    invoke-static {p1}, Lorg/bouncycastle/asn1/cmp/PollRepContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollRepContent;

    move-result-object v0

    goto/16 :goto_0

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIBody;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

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


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIBody;->body:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
