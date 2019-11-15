.class public Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsCipherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsCipherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAEADBlockCipher_AES_CCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAEADBlockCipher_AES_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAEADBlockCipher_Camellia_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaEngine()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESEngine()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createAESCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createAESEngine()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    return-object v0
.end method

.method protected createCamelliaBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaEngine()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createCamelliaCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createCamelliaEngine()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    return-object v0
.end method

.method protected createChaCha20Poly1305(Lorg/bouncycastle/crypto/tls/TlsContext;)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-object v0
.end method

.method public createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x8

    const/16 v1, 0x20

    const/16 v0, 0x10

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createChaCha20Poly1305(Lorg/bouncycastle/crypto/tls/TlsContext;)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p1, v0, v2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_CCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAESCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_AES_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_Camellia_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0, p1, v1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCamelliaCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createCipher_Camellia_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;III)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createNullCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;III)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_12
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x2 -> :sswitch_10
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_c
        0xe -> :sswitch_12
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_b
        0x14 -> :sswitch_d
        0x64 -> :sswitch_e
        0x65 -> :sswitch_11
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method protected createCipher_AES_CCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_CCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_CCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createCipher_AES_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_AES_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createCipher_Camellia_GCM(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsAEADCipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_Camellia_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createAEADBlockCipher_Camellia_GCM()Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createDESedeCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createDESedeBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x18

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected createNullCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsNullCipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method protected createRC4Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createRC4StreamCipher()Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IZ)V

    return-object v0
.end method

.method protected createRC4StreamCipher()Lorg/bouncycastle/crypto/StreamCipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    return-object v0
.end method

.method protected createSEEDBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected createSEEDCipher(Lorg/bouncycastle/crypto/tls/TlsContext;I)Lorg/bouncycastle/crypto/tls/TlsBlockCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSEEDBlockCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/16 v6, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected createSalsa20Cipher(Lorg/bouncycastle/crypto/tls/TlsContext;III)Lorg/bouncycastle/crypto/tls/TlsStreamCipher;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20StreamCipher(I)Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createSalsa20StreamCipher(I)Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p4}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p4}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;->createHMACDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    const/4 v7, 0x1

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IZ)V

    return-object v0
.end method

.method protected createSalsa20StreamCipher(I)Lorg/bouncycastle/crypto/StreamCipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-object v0
.end method
