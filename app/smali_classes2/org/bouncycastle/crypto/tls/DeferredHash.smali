.class Lorg/bouncycastle/crypto/tls/DeferredHash;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;


# static fields
.field protected static final BUFFERING_HASH_LIMIT:I = 0x4


# instance fields
.field private buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field private hashes:Ljava/util/Hashtable;

.field private prfHashAlgorithm:Ljava/lang/Short;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Short;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected checkStopBuffering()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    :cond_1
    return-void
.end method

.method protected checkTrackingHash(Ljava/lang/Short;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Use fork() to get a definite Digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forkPRFHash()Lorg/bouncycastle/crypto/Digest;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkStopBuffering()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigestSize()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use fork() to get a definite Digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalHash(S)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/Digest;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashAlgorithm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/HashAlgorithm;->getText(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not being tracked"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    return-void
.end method

.method public notifyPRFDetermined()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/CombinedHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;->notifyPRFDetermined()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkTrackingHash(Ljava/lang/Short;)V

    return-object p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sealHashAlgorithms()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkStopBuffering()V

    return-void
.end method

.method public stopTracking()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/tls/DeferredHash;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->prfHashAlgorithm:Ljava/lang/Short;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;-><init>(Ljava/lang/Short;Lorg/bouncycastle/crypto/Digest;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-object v1
.end method

.method public trackHashAlgorithm(S)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DeferredHash;->checkTrackingHash(Ljava/lang/Short;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too late to track more hash algorithms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->buf:Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DeferredHash;->hashes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method
