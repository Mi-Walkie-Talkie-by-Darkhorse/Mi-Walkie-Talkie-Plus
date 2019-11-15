.class public Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;
.super Ljava/lang/Object;


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B

.field private static final version:Ljava/lang/String; = "2a"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    move v0, v1

    :goto_0
    sget-object v2, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    sget-object v2, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x2et
        0x2ft
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Ljava/lang/String;[C)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x4

    const/16 v2, 0x24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bcrypt String length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 60 required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Bcrypt String format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong Bcrypt version, 2a expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x4

    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v0, v3, :cond_4

    const/16 v1, 0x1f

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid cost factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", 4 < cost < 31 expected."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid cost factor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing password."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodeSaltString(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->generate([C[BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static createBcryptString([B[BI)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x24

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "2a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodeData([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/BCrypt;->generate([B[BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodeData([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static decodeSaltString(Ljava/lang/String;)[B
    .locals 11

    const/16 v10, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    array-length v0, v2

    const/16 v4, 0x16

    if-eq v0, v4, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid base64 salt length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , 22 required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-char v4, v2, v0

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_1

    const/16 v5, 0x2e

    if-lt v4, v5, :cond_1

    const/16 v5, 0x39

    if-le v4, v5, :cond_2

    const/16 v5, 0x41

    if-ge v4, v5, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Salt string contains invalid character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x18

    new-array v4, v0, [C

    array-length v0, v2

    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_4

    sget-object v5, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    aget-char v6, v4, v0

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    add-int/lit8 v7, v0, 0x1

    aget-char v7, v4, v7

    aget-byte v6, v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    add-int/lit8 v8, v0, 0x2

    aget-char v8, v4, v8

    aget-byte v7, v7, v8

    sget-object v8, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    add-int/lit8 v9, v0, 0x3

    aget-char v9, v4, v9

    aget-byte v8, v8, v9

    shl-int/lit8 v5, v5, 0x2

    shr-int/lit8 v9, v6, 0x4

    or-int/2addr v5, v9

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v5, v6, 0x4

    shr-int/lit8 v6, v7, 0x2

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v5, v7, 0x6

    or-int/2addr v5, v8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-array v2, v10, [B

    array-length v3, v2

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private static encodeData([B)Ljava/lang/String;
    .locals 11

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    const/16 v3, 0x18

    if-eq v0, v3, :cond_0

    array-length v0, p0

    if-eq v0, v4, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 24 for key or 16 for salt expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    if-ne v0, v4, :cond_1

    const/16 v0, 0x12

    new-array v0, v0, [B

    array-length v3, p0

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    move v0, v1

    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v5, p0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    sget-object v9, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    ushr-int/lit8 v10, v6, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v9, v9, v10

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    shl-int/lit8 v6, v6, 0x4

    ushr-int/lit8 v10, v7, 0x4

    or-int/2addr v6, v10

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v9, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    shl-int/lit8 v7, v7, 0x2

    ushr-int/lit8 v9, v8, 0x6

    or-int/2addr v7, v9

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    and-int/lit8 v7, v8, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-byte v2, p0, v0

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v3

    if-ne v0, v1, :cond_3

    const/16 v0, 0x16

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static generate([C[BI)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x48

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, p1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 byte salt required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x4

    if-lt p2, v1, :cond_3

    const/16 v1, 0x1f

    if-le p2, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid cost factor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v1

    array-length v2, v1

    if-lt v2, v0, :cond_5

    :goto_0
    new-array v0, v0, [B

    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_6

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->createBcryptString([B[BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v1

    :cond_5
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    array-length v2, v0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
