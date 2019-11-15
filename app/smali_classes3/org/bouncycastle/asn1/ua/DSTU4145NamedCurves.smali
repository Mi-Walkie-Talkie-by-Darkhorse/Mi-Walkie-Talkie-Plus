.class public Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field static final oidBase:Ljava/lang/String;

.field static final oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/bouncycastle/crypto/params/ECDomainParameters;

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oidBase:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v9, v0, [Ljava/math/BigInteger;

    const/4 v0, 0x0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "400000000000000000002BEC12BE2262D39BCF14D"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "3FFFFFFFFFFFFFFFFFFFFFB12EBCC7D7F29FF7701F"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "800000000000000000000189B4E67606E3825BB2831"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "3FFFFFFFFFFFFFFFFFFFFFFB981960435FE5AB64236EF"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "40000000000000000000000069A779CAC1DABC6788F7474F"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x5

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "1000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x6

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "800000000000000000000000000000006759213AF182E987D3E17714907D470D"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/4 v0, 0x7

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC079C2F3825DA70D390FBBA588D4604022B7B7"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/16 v0, 0x8

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "40000000000000000000000000000000000000000000009C300B75A3FA824F22428FD28CE8812245EF44049B2D49"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/16 v0, 0x9

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA3175458009A8C0A724F02F81AA8A1FCBAF80D90C7A95110504CF"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v1, v9, v0

    const/16 v0, 0xa

    new-array v10, v0, [Ljava/math/BigInteger;

    const/4 v0, 0x0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x5

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x6

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x7

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/16 v0, 0x8

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/16 v0, 0x9

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v10, v0

    const/16 v0, 0xa

    new-array v11, v0, [Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v12, 0x0

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xa3

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x7

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "5FF6108462A2DC8210AB403925E638A19C1455D21"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x0

    aget-object v7, v9, v7

    const/4 v8, 0x0

    aget-object v8, v10, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v12

    const/4 v7, 0x1

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xa7

    const/4 v2, 0x6

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "6EE3CEEB230811759F20518A0930F1A4315A827DAC"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x1

    aget-object v5, v9, v5

    const/4 v6, 0x1

    aget-object v6, v10, v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v7

    const/4 v12, 0x2

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xad

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xa

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ZERO:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "108576C80499DB2FC16EDDF6853BBB278F6B6FB437D9"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x2

    aget-object v7, v9, v7

    const/4 v8, 0x2

    aget-object v8, v10, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v12

    const/4 v12, 0x3

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xb3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "4A6E0856526436F2F88DD07A341E32D04184572BEB710"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x3

    aget-object v7, v9, v7

    const/4 v8, 0x3

    aget-object v8, v10, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v12

    const/4 v7, 0x4

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xbf

    const/16 v2, 0x9

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "7BC86E2102902EC4D5890E8B6B4981ff27E0482750FEFC03"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x4

    aget-object v5, v9, v5

    const/4 v6, 0x4

    aget-object v6, v10, v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v7

    const/4 v12, 0x5

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xe9

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v4, 0x9

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "06973B15095675534C7CF7E64A21BD54EF5DD3B8A0326AA936ECE454D2C"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x5

    aget-object v7, v9, v7

    const/4 v8, 0x5

    aget-object v8, v10, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v12

    const/4 v7, 0x6

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x101

    const/16 v2, 0xc

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ZERO:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "1CEF494720115657E18F938D7A7942394FF9425C1458C57861F9EEA6ADBE3BE10"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x6

    aget-object v5, v9, v5

    const/4 v6, 0x6

    aget-object v6, v10, v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v7

    const/4 v12, 0x7

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x133

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "393C7F7D53666B5054B5E6C6D3DE94F4296C0C599E2E2E241050DF18B6090BDC90186904968BB"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x7

    aget-object v7, v9, v7

    const/4 v8, 0x7

    aget-object v8, v10, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v12

    const/16 v7, 0x8

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x16f

    const/16 v2, 0x15

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "43FC8AD242B0B7A6F3D1627AD5654447556B47BF6AA4A64B0C2AFE42CADAB8F93D92394C79A79755437B56995136"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x8

    aget-object v5, v9, v5

    const/16 v6, 0x8

    aget-object v6, v10, v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v7

    const/16 v12, 0x9

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x1af

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x5

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "03CE10490F6A708FC26DFE8C3D27C4F94E690134D5BFF988D8D28AAEAEDE975936C66BAC536B18AE2DC312CA493117DAA469C640CAF3"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x9

    aget-object v7, v9, v7

    const/16 v8, 0x9

    aget-object v8, v10, v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v11, v12

    const/16 v0, 0xa

    new-array v1, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v0, 0x0

    const/4 v2, 0x0

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "2E2F85F5DD74CE983A5C4237229DAF8A3F35823BE"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "3826F008A8C51D7B95284D9D03FF0E00CE2CD723A"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "7A1F6653786A68192803910A3D30B2A2018B21CD54"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "5F49EB26781C0EC6B8909156D98ED435E45FD59918"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const/4 v2, 0x2

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "4D41A619BCC6EADF0448FA22FAD567A9181D37389CA"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "10B51CC12849B234C75E6DD2028BF7FF5C1CE0D991A1"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const/4 v2, 0x3

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "6BA06FE51464B2BD26DC57F48819BA9954667022C7D03"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "25FBC363582DCEC065080CA8287AAFF09788A66DC3A9E"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const/4 v2, 0x4

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "714114B762F2FF4A7912A6D2AC58B9B5C2FCFE76DAEB7129"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "29C41E568B77C617EFE5902F11DB96FA9613CD8D03DB08DA"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const/4 v2, 0x5

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "3FCDA526B6CDF83BA1118DF35B3C31761D3545F32728D003EEB25EFE96"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "9CA8B57A934C54DEEDA9E54A7BBAD95E3B2E91C54D32BE0B9DF96D8D35"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const/4 v2, 0x6

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "02A29EF207D0E9B6C55CD260B306C7E007AC491CA1B10C62334A9E8DCD8D20FB7"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "10686D41FF744D4449FCCF6D8EEA03102E6812C93A9D60B978B702CF156D814EF"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const/4 v2, 0x7

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "216EE8B189D291A0224984C1E92F1D16BF75CCD825A087A239B276D3167743C52C02D6E7232AA"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "5D9306BACD22B7FAEB09D2E049C6E2866C5D1677762A8F2F2DC9A11C7F7BE8340AB2237C7F2A0"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const/16 v2, 0x8

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "324A6EDDD512F08C49A99AE0D3F961197A76413E7BE81A400CA681E09639B5FE12E59A109F78BF4A373541B3B9A1"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "1AB597A5B4477F59E39539007C7F977D1A567B92B043A49C6B61984C3FE3481AAF454CD41BA1F051626442B3C10"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const/16 v2, 0x9

    aget-object v2, v11, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "1A62BA79D98133A16BBAE7ED9A8E03C32E0824D57AEF72F88986874E5AAE49C27BED49A2A95058068426C2171E99FD3B43C5947C857D"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "70B5E1E14031C1F70BBEFE96BDDE66F451754B4CA5F48DA241F331AA396B8D1839A855C1769B1EA14BA53308B5E2723724E090E02DB9"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    aget-object v4, v11, v0

    aget-object v5, v1, v0

    aget-object v6, v9, v0

    aget-object v7, v10, v0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oidBase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oidBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
