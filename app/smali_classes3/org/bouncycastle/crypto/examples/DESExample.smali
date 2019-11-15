.class public Lorg/bouncycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;


# instance fields
.field private cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private encrypt:Z

.field private in:Ljava/io/BufferedInputStream;

.field private key:[B

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz p4, :cond_0

    :try_start_2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v1, "www.bouncycastle.org"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    :try_start_4
    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    const/16 v2, 0xc0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->generateKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input file not found ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output file not created ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_4
    :try_start_5
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Hmmm, no SHA1PRNG, you need the Sun implementation"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not decryption create key file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    :cond_0
    :try_start_6
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decryption key file not found, or not valid ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    array-length v0, p0

    if-ge v0, v6, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/examples/DESExample;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/examples/DESExample;-><init>()V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Usage: java "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " infile outfile [keyfile]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    const-string v0, "deskey.dat"

    aget-object v3, p0, v1

    aget-object v4, p0, v2

    array-length v5, p0

    if-le v5, v6, :cond_1

    aget-object v0, p0, v6

    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/examples/DESExample;

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/bouncycastle/crypto/examples/DESExample;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v2}, Lorg/bouncycastle/crypto/examples/DESExample;->process()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private performDecrypt([B)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    array-length v2, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private performEncrypt([B)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/16 v6, 0x2f

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v1, v6, [B

    new-array v4, v0, [B

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v4, v2, v0}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v4, v1, v0}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private process()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/examples/DESExample;->performEncrypt([B)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/examples/DESExample;->performDecrypt([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
