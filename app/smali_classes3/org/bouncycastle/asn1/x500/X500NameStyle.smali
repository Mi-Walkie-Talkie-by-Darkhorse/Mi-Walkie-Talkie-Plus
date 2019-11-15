.class public interface abstract Lorg/bouncycastle/asn1/x500/X500NameStyle;
.super Ljava/lang/Object;


# virtual methods
.method public abstract areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
.end method

.method public abstract attrNameToOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method

.method public abstract calculateHashCode(Lorg/bouncycastle/asn1/x500/X500Name;)I
.end method

.method public abstract fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/x500/RDN;
.end method

.method public abstract oidToAttrNames(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
.end method

.method public abstract oidToDisplayName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
.end method

.method public abstract stringToValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;
.end method

.method public abstract toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
.end method
